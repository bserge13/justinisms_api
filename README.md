# Justinisms API

Welcome to the Justinisms API, where you can access a collection of unique and humorous sayings coined by none other than Justin himself. Inject some humor and wit into your applications with these delightful phrases!

## Getting Started

To get started using the Justinisms API, follow the steps below:

### Prerequisites

Make sure you have the following prerequisites installed:

- Ruby Version 3.1.2
- Rails Version 7.0.8

### Installation

1. Clone the repository:

```
git clone https://github.com/bserge13/justinisms_api
```

2. Navigate to the project directory:

```
cd justinisms_api
```

3. Install dependencies:

```
bundle install
```

4. Initialize the database:

```
rails db:{create,migrate}
```

5. Start the API server:

```
rails s
```

The API will be running at `http://localhost:3000`.

## Endpoints

### Get a Random Justinism

### Parameters

A query parameter of 'limit' is required in order to return a 200 response


#### Request

- **URL:** `/api/v0/justinisms?limit=(number of sayings)`
- **Method:** `GET`

#### Response

```json
{
  "saying": "Jack shit!"
}


## Usage

You can integrate the Justinisms API into your application by making HTTP requests to the provided endpoints. Use these sayings to add a touch of humor to your user interfaces, generate witty content, or simply for entertainment purposes.


## Contributing

If you have your own Justinisms to add to the collection, feel free to submit a pull request. Contributions are always welcome!


## Acknowledgments

- Thanks to Justin for providing the endless stream of wisdom and humor!
- Inspired by other great APIs that spread joy and laughter.

Enjoy using the Justinisms API, and may your code be forever witty!