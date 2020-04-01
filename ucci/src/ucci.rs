#[derive(Debug)]
pub struct Opt {
    pub n: &'static str,
    pub t: &'static str,
    pub v: String,
    pub d: &'static str,
}

impl std::fmt::Display for Opt {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "option {} {} default {}", self.n, self.t, self.d)
    }
}
