<?php

namespace App\Controllers;

use CodeIgniter\Controller;

class Home extends BaseController
{
    protected $db;

    public function index(): string
    {
        return view('welcome_message');
    } 

    public function proyectos()
    {
        $this->db = \Config\Database::connect();

        // Consulta 1: Empleados con salario mayor a 1500.00
        $query_empleadosSalario = $this->db->query(
            "SELECT * 
            FROM Empleados 
            WHERE Salario > 1500.00"
        );

        $empleadosSalario = $query_empleadosSalario->getResultArray();

        // Consulta 2: Proyectos con duración superior a 9 meses
        $query_proyectosDuracion = $this->db->query(
            "SELECT * 
            FROM Proyectos 
            WHERE Duracion_Meses > 9"
        );

        $proyectosDuracion = $query_proyectosDuracion->getResultArray();

        // Consulta 3: Proyectos ordenados por presupuesto descendente
        $query_proyectosPresupuesto = $this->db->query(
            "SELECT * 
            FROM Proyectos 
            ORDER BY Presupuesto DESC"
        );

        $proyectosPresupuesto = $query_proyectosPresupuesto->getResultArray();

        return $this->response->setJSON([
            'empleadosSalario' => $empleadosSalario,
            'proyectosDuracion' => $proyectosDuracion,
            'proyectosPresupuesto' => $proyectosPresupuesto
        ]);
    }
}

