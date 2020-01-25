## Instrucciones
Antes de comenzar:
```
rails db:migrate
rails db:seed
rails s
```
**ENDPOINTS**
### Health
```
GET    /api/v1/health             API status
```
### Movies
```
GET    /api/v1/movies             List movies
GET    /api/v1/movies-availables  List available movies
POST   /api/v1/movies             Create movie
GET    /api/v1/movies/:id         Show movie
PUT    /api/v1/movies/:id         Update movie
DELETE /api/v1/movies/:id         Destroy movie
```
### Rervations
```
GET    /api/v1/reservations       List reservations
POST   /api/v1/reservations       Create reservation
GET    /api/v1/reservations/:id   Show reservation
PUT    /api/v1/reservations/:id   Update reservation
DELETE /api/v1/reservations/:id   Destroy reservation
