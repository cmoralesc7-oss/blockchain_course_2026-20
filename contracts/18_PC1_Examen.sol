
 
 // SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.1 <0.9.0;

contract Biblioteca258963 {

    struct Libro {
        uint256 id;
        string titulo;
        string autor;
        uint256 anio;
    }

    Libro[] public libros;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }

    function agregarElemento(
        uint256 _id,
        string memory _titulo,
        string memory _autor,
        uint256 _anio
    ) public {
        require(_id % 2 == 0, "El ID debe ser par");

        libros.push(
            Libro(_id, _titulo, _autor, _anio)
        );
    }

    function contarElementos() public view returns (uint256) {
        return libros.length;
    }

    function cambiarDireccion(address _nuevaDireccion) public {
        direccion = _nuevaDireccion;
    }
}
