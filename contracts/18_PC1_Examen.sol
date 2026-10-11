
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
}
