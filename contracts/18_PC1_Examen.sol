
 // SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.1 <0.9.0;

import "hardhat/console.sol";

contract Biblioteca258963 {

    struct Libro {
        uint256 id;
        string titulo;
        string autor;
        uint256 anio;
        bool estado;
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
        uint256 _anio,
        bool _estado
    ) public {
        require(_id % 2 == 0, "El ID debe ser par");

        libros.push(
            Libro(_id, _titulo, _autor, _anio, _estado)
        );
    }

    function contarElementos() public view returns (uint256) {
        return libros.length;
    }

    function cambiarDireccion(address _nuevaDireccion) public {
        direccion = _nuevaDireccion;
    }

    function mostrarActivos() external view {
        for (uint256 i = 0; i < libros.length; i++) {
            if (libros[i].estado == true) {
                console.log(
                    "Libro activo",
                    libros[i].id,
                    libros[i].titulo
                );
            }
        }
    }
}
