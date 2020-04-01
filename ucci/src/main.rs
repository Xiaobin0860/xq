mod ucci;

fn main() {
    let opt = ucci::Opt {
        n: "bookfiles",
        t: "string",
        v: String::from("v"),
        d: "",
    };
    println!("{}", opt);
}
