use actix_web::{web, App, HttpRequest, HttpServer, Responder};

async fn greet(req: HttpRequest) -> impl Responder {
    let name = req.match_info().get("name").unwrap_or("World");
    format!("Hello {}!", &name)
}



//    Rust standard library does not include an async runtime (you are free to choose or implement one)
//    cargo expand demystifies the macro if you want
#[tokio::main] //we need to be asynchronous: procedural macro to transforms main into an async entry point
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new() //builder pattern
            .route("/", web::get().to(greet))
            .route("/{name}", web::get().to(greet))
    })
        .bind("127.0.0.1:8000")?
        .run()
        .await
}