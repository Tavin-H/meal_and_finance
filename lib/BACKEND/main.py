from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel

app = FastAPI()

# Fix CORS for development
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],       # allow all origins (dev only)
    allow_methods=["*"],       # allow GET, POST, OPTIONS, etc.
    allow_headers=["*"],       # allow all headers
)

class InputData(BaseModel):
    x: int
    y: int

@app.post("/compute")
def compute(data: InputData):
    result = data.x + data.y
    return {"result": result}
