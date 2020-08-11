use std::io;
use std::io::BufRead;

mod ucci;
mod uci;

fn main() -> io::Result<()> {
    let opt = ucci::Opt {
        n: "bookfiles",
        t: ucci::OpType::STRING,
        v: String::from("v"),
        d: "",
    };
    println!("{}", opt);

    let opt = uci::Opt::string("<empty>", None);
    println!("{}", opt);
    let opt = uci::Opt::combo(
        "uci",
        Some(vec!["uci", "usi", "ucci", "xboard"]),
        std::option::Option::None,
    );
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
