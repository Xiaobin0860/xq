use actix_web::{get, web, App, HttpResponse, HttpServer, Responder};
use listenfd::ListenFd;
use std::sync::Mutex;

// This struct represents state
struct AppState {
    app_name: String,
    counter: Mutex<i32>,
}

async fn index() -> impl Responder {
    HttpResponse::Ok().body("Hello world!")
}

async fn index2() -> impl Responder {
    HttpResponse::Ok().body("Hello world again!")
}

#[get("/hello")]
async fn index3() -> impl Responder {
    HttpResponse::Ok().body("Hey there!")
}

#[get("/index.html")]
async fn index4() -> impl Responder {
    "Hello World"
}

#[get("/state")]
async fn _state(data: web::Data<AppState>) -> String {
    let mut counter = data.counter.lock().unwrap(); // <- get counter's MutexGuard
    *counter += 1; // <- access counter inside MutexGuard

    format!("Hello {}, counter: {}", data.app_name, counter) // <- response with count
}

#[actix_rt::main]
async fn main() -> std::io::Result<()> {
    let state = web::Data::new(AppState {
        app_name: String::from("Actix-web"),
        counter: Mutex::new(0),
    });
    let mut listenfd = ListenFd::from_env();
    let mut server = HttpServer::new(move || {
        App::new()
            .app_data(state.clone())
            .route("/", web::get().to(index))
            .route("/again", web::get().to(index2))
            .service(index3)
            .service(web::scope("/app").service(index4).service(_state))
    });

    server = if let Some(l) = listenfd.take_tcp_listener(0).unwrap() {
        server.listen(l)?
    } else {
        server.bind("127.0.0.1:8088")?
    };

    server.run().await
}
