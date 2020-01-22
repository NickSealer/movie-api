## Instrucciones
Antes de comenzar:
```
rails db:migrate
rails s
```
**ENDPOINTS**
endpoints:
```
GET    /api/v1/movies             List movies
POST   /api/v1/movies             Create movie
GET    /api/v1/movies/:id         Show movie
PUT    /api/v1/movies/:id         Update movie
DELETE /api/v1/movies/:id         Destroy movie

GET    /api/v1/reservations       List reservations
POST   /api/v1/reservations       Create reservation
GET    /api/v1/reservations/:id   Show reservation
PUT    /api/v1/reservations/:id   Update reservation
DELETE /api/v1/reservations/:id   Destroy reservation
