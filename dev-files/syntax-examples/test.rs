//
// Theme Test File for Rust
// This file showcases various Rust syntax elements.
//

// --- Comments ---
// This is a standard comment.
// TODO: Implement the `Display` trait for the `Color` struct.
// FIXME: Potential data race in the multi-threaded section.

// --- Crates and Modules ---
use std::collections::HashMap;
use std::io::{self, Write};

// --- Constants and Statics ---
const MAX_CONNECTIONS: u32 = 10_000;
static mut GLOBAL_COUNTER: u32 = 0;

// --- Structs, Enums, and Traits ---
// A struct with a lifetime parameter
pub struct User<'a> {
    username: &'a str,
    active: bool,
}

// An enum with different kinds of variants
enum Message {
    Quit,
    Move { x: i32, y: i32 },
    Write(String),
    ChangeColor(u8, u8, u8),
}

// A trait definition
trait Summary {
    fn summarize(&self) -> String;
}

// --- Trait Implementation ---
impl<'a> Summary for User<'a> {
    fn summarize(&self) -> String {
        format!("User: {}, Active: {}", self.username, self.active)
    }
}

// --- Functions ---
// A generic function with trait bounds
fn notify<T: Summary>(item: &T) {
    // @function.macro: `println!` is a macro
    println!("Breaking news! {}", item.summarize());
}

fn main() -> io::Result<()> {
    // --- Variables and Mutability ---
    let user1 = User { username: "alex", active: true };
    let mut a_number = 42; // @keyword: `mut`

    notify(&user1);

    // --- Control Flow ---
    // @conditional: if/else
    if a_number > 50 {
        println!("Greater than 50");
    } else {
        println!("Less than or equal to 50");
    }

    // @repeat: loop, while, for
    let mut counter = 0;
    loop {
        counter += 1;
        if counter == 5 {
            break; // @keyword: `break`
        }
    }

    // --- Pattern Matching ---
    // @conditional: `match`
    let msg = Message::Move { x: 10, y: 20 };
    match msg {
        Message::Quit => println!("Quitting."),
        Message::Move { x, y } => {
            println!("Move to x: {}, y: {}", x, y);
        }
        Message::Write(text) => println!("Text message: {}", text),
        _ => (), // Wildcard
    }

    // --- Error Handling ---
    // @exception: `?` operator and `Result`
    let mut buffer = String::new();
    io::stdin().read_line(&mut buffer)?; // The `?` propagates errors

    // --- Deliberate Syntax Error ---
    // Remove the '//' to test LSP diagnostics
    // let x: i32 = "not a number";

    Ok(())
}
