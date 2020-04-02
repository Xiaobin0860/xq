use std::io;
use std::io::BufRead;

mod ucci;

fn main() -> io::Result<()> {
    let opt = ucci::Opt {
        n: "bookfiles",
        t: ucci::OpType::STRING,
        v: String::from("v"),
        d: "",
    };
    println!("{}", opt);

    loop {
        let mut buffer = String::new();
        let stdin = io::stdin();
        let mut handle = stdin.lock();
        handle.read_line(&mut buffer)?;
        let cmd = buffer.trim();
        match cmd {
            "quit" => {
                println!("bye");
                break;
            }
            _ => println!("{}", cmd),
        }
    }

    Ok(())
}
