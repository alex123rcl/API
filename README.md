# Documentación de la API

## Descripción general

Este documento proporciona detalles sobre la API, incluyendo los endpoints y las estructuras de datos utilizadas en las solicitudes y respuestas.

## Video de demostración

[Ver video en Google Drive](https://drive.google.com/file/d/1W06rE1_0TqTyiyV70Iyon3nBSS9b7Ky2/view?usp=sharing)


## Versión de la API

- **Versión**: 1.0.0
- **URL del servidor**: [http://localhost:3000](http://localhost:3000)

## Endpoints

### Usuarios

#### Listar usuarios

- **Método**: `GET`
- **Ruta**: `/users`
- **Descripción**: Recupera una lista de usuarios.
- **Respuesta**:
  - Estado `200`: Devuelve un array de usuarios.
    ```json
    [
      {
        "id": "string",
        "name": "string"
      }
    ]
    ```

#### Crear usuario

- **Método**: `POST`
- **Ruta**: `/users`
- **Descripción**: Crea un nuevo usuario.
- **Cuerpo de la solicitud**:
  ```json
  {
    "name": "John Doe",
    "password": "securepassword123",
    "email": "johndoe@example.com",
    "birthday": "1990-01-01",
    "phone": "+1234567890"
  }
  ```
- **Respuesta**:
  - Estado `201`: Devuelve el usuario creado.
    ```json
    {
      "id": "string",
      "name": "string",
      "password": "string",
      "email": "string",
      "birthday": "string",
      "phone": "string"
    }
    ```

#### Mostrar usuario

- **Método**: `GET`
- **Ruta**: `/users/{id}`
- **Descripción**: Recupera los detalles de un usuario específico.
- **Parámetros de ruta**:
  - `id`: ID del usuario.
- **Respuesta**:
  - Estado `200`: Devuelve los detalles del usuario.
    ```json
    {
      "id": "string",
      "name": "string"
    }
    ```

#### Actualizar usuario

- **Método**: `PATCH`
- **Ruta**: `/users/{id}`
- **Descripción**: Actualiza los detalles de un usuario específico.
- **Parámetros de ruta**:
  - `id`: ID del usuario.
- **Cuerpo de la solicitud**:
  ```json
  {
    "name": "Updated Name"
  }
  ```
- **Respuesta**:
  - Estado `200`: Devuelve el usuario actualizado.
    ```json
    {
      "id": "string",
      "name": "string"
    }
    ```

#### Reemplazar usuario

- **Método**: `PUT`
- **Ruta**: `/users/{id}`
- **Descripción**: Reemplaza por completo los detalles de un usuario.
- **Cuerpo de la solicitud**:
  ```json
  {
    "name": "John Doe",
    "password": "securepassword123",
    "email": "johndoe@example.com",
    "birthday": "1990-01-01",
    "phone": "+1234567890"
  }
  ```
- **Respuesta**:
  - Estado `200`: Devuelve el usuario reemplazado.
    ```json
    {
      "id": "string",
      "name": "string",
      "password": "string",
      "email": "string",
      "birthday": "string",
      "phone": "string"
    }
    ```

#### Eliminar usuario

- **Método**: `DELETE`
- **Ruta**: `/users/{id}`
- **Descripción**: Elimina un usuario específico.
- **Parámetros de ruta**:
  - `id`: ID del usuario.
- **Respuesta**:
  - Estado `200`: Devuelve un mensaje confirmando la eliminación.
    ```json
    {
      "message": "Usuario eliminado correctamente"
    }
    ```

### Departamentos

#### Listar departamentos

- **Método**: `GET`
- **Ruta**: `/departments`
- **Descripción**: Recupera una lista de departamentos.
- **Respuesta**:
  - Estado `200`: Devuelve una lista de departamentos.
    ```json
    {
      "departments": [
        { "id": 1, "name": "RRHH" },
        { "id": 2, "name": "Ingeniería" }
      ]
    }
    ```

#### Crear departamento

- **Método**: `POST`
- **Ruta**: `/departments`
- **Descripción**: Crea un nuevo departamento.
- **Cuerpo de la solicitud**:
  ```json
  {
    "name": "RRHH"
  }
  ```
- **Respuesta**:
  - Estado `200`: Devuelve el departamento creado.
    ```json
    {
      "id": 1,
      "name": "Nuevo Departamento"
    }
    ```

#### Mostrar departamento

- **Método**: `GET`
- **Ruta**: `/departments/{id}`
- **Descripción**: Recupera los detalles de un departamento específico.
- **Respuesta**:
  - Estado `200`: Devuelve los detalles del departamento.
    ```json
    {
      "id": 123,
      "name": "RRHH"
    }
    ```

#### Actualizar departamento (Parcial)

- **Método**: `PATCH`
- **Ruta**: `/departments/{id}`
- **Descripción**: Actualiza el nombre de un departamento.
- **Cuerpo de la solicitud**:
  ```json
  {
    "name": "Departamento Actualizado"
  }
  ```
- **Respuesta**:
  - Estado `200`: Devuelve el departamento actualizado.
    ```json
    {
      "id": 123,
      "name": "Departamento Actualizado"
    }
    ```

#### Actualizar departamento (Completo)

- **Método**: `PUT`
- **Ruta**: `/departments/{id}`
- **Descripción**: Reemplaza por completo los detalles de un departamento.
- **Cuerpo de la solicitud**:
  ```json
  {
    "name": "Departamento Actualizado"
  }
  ```
- **Respuesta**:
  - Estado `200`: Devuelve el departamento actualizado.
    ```json
    {
      "id": 123,
      "name": "Departamento Actualizado"
    }
    ```

#### Eliminar departamento

- **Método**: `DELETE`
- **Ruta**: `/departments/{id}`
- **Descripción**: Elimina un departamento específico.
- **Respuesta**:
  - Estado `200`: Devuelve un mensaje confirmando la eliminación.
    ```json
    {
      "message": "Departamento eliminado correctamente"
    }
    ```

### Empleados

#### Listar empleados

- **Método**: `GET`
- **Ruta**: `/employees`
- **Descripción**: Recupera una lista de empleados.
- **Respuesta**:
  - Estado `200`: Devuelve un array de empleados.
    ```json
    [
      {
        "id": 1,
        "name": "John Doe",
        "departments": "RRHH",
        "phone": 123456789,
        "birthday": "1990-01-01",
        "work_time": "08:00:00"
      },
      {
        "id": 2,
        "name": "Jane Smith",
        "departments": "Ingeniería",
        "phone": 987654321,
        "birthday": "1985-05-10",
        "work_time": "09:00:00"
      }
    ]
    ```

#### Crear empleado

- **Método**: `POST`
- **Ruta**: `/employees`
- **Descripción**: Crea un nuevo empleado.
- **Cuerpo de la solicitud**:
  ```json
  {
    "name": "Nuevo Empleado",
    "departments": "Ventas",
    "phone": 123456789,
    "birthday": "1995-03-15",
    "work_time": "09:00:00"
  }
  ```
- **Respuesta**:
  - Estado `200`: Devuelve el empleado creado.
    ```json
    {
      "id": 1,
      "name": "Nuevo Empleado",
      "departments": "Ventas",
      "phone": 123456789,
      "birthday": "1995-03-15",
      "work_time": "09:00:00"
    }
    ```

#### Mostrar empleado

- **Método**: `GET`
- **Ruta**: `/employees/{id}`
- **Descripción**: Recupera los detalles de un empleado específico.
- **Respuesta**:
  - Estado `200`: Devuelve los detalles del empleado.
    ```json
    {
      "id": 123,
      "name": "John Doe",
      "departments": "RRHH",
      "phone": 123456789,
      "birthday": "1990-01-01",
      "work_time": "08:00:00"
    }
    ```

#### Actualizar empleado (Parcial)

- **Método**: `PATCH`
- **Ruta**: `/employees/{id}`
- **Descripción**: Actualiza los detalles de un empleado específico.
- **Cuerpo de la solicitud**:
  ```json
  {
    "name": "Empleado Actualizado",
    "departments": "Finanzas",
    "phone": 123456789,
    "birthday": "1995-03-15",
    "work_time": "09:00:00"
  }
  ```
- **Respuesta**:
  - Estado `200`: Devuelve el empleado actualizado.
    ```json
    {
      "id": 123,
      "name": "Empleado Actualizado",
      "departments": "Finanzas",
      "phone": 123456789,
      "birthday": "1995-03-15",
      "work_time": "09:00:00"
    }
    ```

#### Reemplazar empleado

- **Método**: `PUT`
- **Ruta**: `/employees/{id}`
- **Descripción**: Reemplaza por completo los detalles de un empleado.
- **Cuerpo de la solicitud**:
  ```json
  {
    "name": "Empleado Reemplazado",
    "departments": "IT",
    "phone": 987654321,
    "birthday": "1990-07-20",
    "work_time": "08:00:00"
  }
  ```
- **Respuesta**:
  - Estado `200`: Devuelve el empleado reemplazado.
    ```json
    {
      "id": 123,
      "name": "Empleado Reemplazado",
      "departments": "IT",
      "phone": 987654321,
      "birthday": "1990-07-20",
      "work_time": "08:00:00"
    }
    ```

#### Eliminar empleado

- **Método**: `DELETE`
- **Ruta**: `/employees/{id}`
- **Descripción**: Elimina un empleado específico.
- **Respuesta**:
  - Estado `200`: Devuelve un mensaje confirmando la eliminación.
    ```json
    {
      "message": "Empleado eliminado correctamente"
    }
    ```
