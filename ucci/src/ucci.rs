use std::fmt;

#[allow(dead_code)]
#[derive(Debug)]
pub enum OpType {
    CHECK,
    STRING,
    SPIN,
    COMBO,
    BUTTON,
}

#[derive(Debug)]
pub struct Opt {
    pub n: &'static str,
    pub t: OpType,
    pub v: String,
    pub d: &'static str,
}

impl fmt::Display for Opt {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "option {} {} default {}", self.n, self.t, self.d)
    }
}

impl fmt::Display for OpType {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            OpType::CHECK => write!(f, "check"),
            OpType::STRING => write!(f, "string"),
            OpType::SPIN => write!(f, "spin"),
            OpType::COMBO => write!(f, "combo"),
            OpType::BUTTON => write!(f, "button"),
        }
    }
}
