# Data Service

## Running Locally

- cd into the `data-service` folder
- Windows: `go build; .\data-service.exe`  
- Linux (With Makefile): `make run`

## EndPoints Exposed

- [GET] at `/`
  - Returns "Hello World!"
- [POST] at `/store`
  - Expects a [ActiveUserModel](models/ActiveUserModel.go) object
  - Example Body
    ```json
    {
      "username" : "moorect",
      "name" : "Collin Moore",
      "checkInTime" : 1540299875321,
      "checkOutTime" : 1540307075327,
      "courses" : [],
      "problemDescription" : "Need Help",
      "tutorUsername" : "boylecj",
      "tutorName" : "Connor Boyle",
      "roomId" : "Percopo"
    }
    ```
  - Returns an [HTTPResponse](models/HTTPResponse.go)
  - Example Response
    ```json
    {
      "error": "[Error]:409: PUT http://127.0.0.1:5984/mydatabase/1540299875321moorect - conflict Document update conflict.\n",
      "success": false,
      "count": 0
    }
    ```
  - [GET] at `/csv`
    - Returns a CSV of the current state of the database