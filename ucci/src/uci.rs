use std::fmt;

type CF = Option<fn(opt: &Opt)>;

pub struct Opt {
    default: &'static str,
    current: String,
    tp: &'static str,
    min: i32,
    max: i32,
    change: CF,
}

impl Opt {
    pub fn new() -> Self {
        Opt {
            default: "",
            current: String::new(),
            tp: "",
            min: 0,
            max: 0,
            change: None,
        }
    }

    pub fn string(v: &'static str, cf: CF) -> Self {
        Opt {
            default: v,
            current: String::from(v),
            tp: "string",
            min: 0,
            max: 0,
            change: cf,
        }
    }
}

impl fmt::Display for Opt {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "opt {} default {}", self.tp, self.default)
    }
}
