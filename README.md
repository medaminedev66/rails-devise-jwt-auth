<div align="center">
  <h3><b>Rails Devise JWT Authentication</b></h3>
</div>

# 📖 Rails-devise-jwt-auth
> I created a GitHub template repository for this approach if you want to implement it in a project and play around with it. I set up a Rails-API-only app with user authentication using Devise and JWT, and serialization using jsonapi-serializer.

## 🛠 Built With
### Tech Stack

> I am using the following versions:
- Ruby: 3.1.2
- Rails: 7.1.3
- PostgreSQL: 14.5

### Key Features

- You can sign_up, login, and logout using API endpoints.
- After successful authentication (verifying that the username and password match), the server generates an accessToken by encrypting the “userId” and “expiresIn” information and then sends it to the client (the browser). The browser receives this token, saves it, and then includes it with every subsequent request.
- You can access other API endpoints using the provided token.
