use std::fmt;

type ChangeFunc = Option<fn(opt: &Opt)>;
type ComboValues = Option<Vec<&'static str>>;

//#[derive(Default)]
pub struct Opt {
    default_value: &'static str,
    current_value: String,
    op_type: &'static str,
    min_value: i32,
    max_value: i32,
    combo_values: ComboValues,
    idx: u32,
    on_change: ChangeFunc,
}

impl Opt {
    pub fn new() -> Self {
        Opt {
            default_value: "",
            current_value: String::new(),
            op_type: "",
            min_value: 0,
            max_value: 0,
            combo_values: None,
            idx: 0,
            on_change: None,
        }
    }

    pub fn string(v: &'static str, cf: ChangeFunc) -> Self {
        Opt {
            default_value: v,
            current_value: String::from(v),
            op_type: "string",
            min_value: 0,
            max_value: 0,
            combo_values: None,
            idx: 0,
            on_change: cf,
        }
    }

    pub fn combo(v: &'static str, vs: ComboValues, cf: ChangeFunc) -> Self {
        Opt {
            default_value: v,
            current_value: String::from(v),
            op_type: "combo",
            min_value: 0,
            max_value: 0,
            combo_values: vs,
            idx: 0,
            on_change: cf,
        }
    }
}

impl fmt::Display for Opt {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(
            f,
            "opt {}: default={}, current={}",
            self.op_type, self.default_value, self.current_value
        )
    }
}
