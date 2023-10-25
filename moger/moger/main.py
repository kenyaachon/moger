import typer

app = typer.Typer()


@app.command()
def login(env: str):
    print(f"logging into {env}")

@app.command()
def init(env: str):
    print(f"Initalizing moger folder {env}")

@app.command()
def build(env: str):
    print(f"Building application to env {env}")

@app.command()
def deploy(env: str):
    print(f"Deploying application to env {env}")

if __name__ == "__main__":
    app()