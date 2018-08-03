use std::env;

fn print_arrow(size: usize) {

    let mut line = 0;
    let mut text: String;
    while line < size {
        text = " ".repeat(size-line);
        text.push_str("*");

        if line != 0 {
            text.push_str(&" ".repeat(1+(line-1)*2));
            text.push_str("*");
        }
        println!("{}", text);
        line = line+1;
    }
    text = "*".repeat(size*2+1);
    println!("{}", text);
    line = 0;
    while line < size {
        text = " ".repeat(size);
        text.push_str("*");
        println!("{}", text);
        line = line+1;
    }
}

fn main() {

    let args: Vec<String> = env::args().collect();

    match args.len() {
        
        1 => {
            println!("[{}] Please enter one argument", args[0]);
        },

        2 => {
            let result = args[1].parse::<usize>();
            match result {
                Ok(foo) => print_arrow(foo),
                Err(err) => println!("[{}]First argument must be an integer !", args[0]),
            }
        },

        x => {
            println!("[{}] Please enter ONLY one argument", args[0]);
        },
    }

}
