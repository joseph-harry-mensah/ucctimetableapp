<?php
namespace Generic;

class DatabaseTable {
    private $table;
    private $pdo;
    private $primaryKey;

    public function __construct($pdo, $table, $primaryKey){
        $this->pdo = $pdo;
        $this->table = $table;
        $this->primaryKey = $primaryKey;
    }

    private function query($sql, $parameters = []){
        $query = $this->pdo->prepare($sql);
        $query->execute($parameters);
        return $query;
    }
    private function processDate($fields){
        foreach($fields as $key => $value){
            if ($value instanceof \DateTime){
                $fields[$key] = $value->format('Y-m-d');
            }
        }
        return $fields;
    }

    public function insert($fields){
        $query = 'INSERT INTO `'. $this->table . '` (';
        foreach($fields as $key => $value){
            $query .= '`' . $key . '` ,';
        }

        $query = rtrim($query, ",");
        $query .= ") VALUES (";

        foreach($fields as $key => $value){
            $query .= ' :' . $key . ' ,';
        }
        $query = rtrim($query, ",");
        
        $query .= ")";
        $fields = $this->processDate($fields);
        $this->query($query, $fields);
    }

    private function update($fields){
        $query = 'UPDATE '. $this->table . ' SET ';
        foreach($fields as $key => $value){
            $query .= '`' . $key . '` = :' . $key . ',';
        }
        $query = rtrim(",", $query);
        $query .= ' WHERE ' . $this->primaryKey . ' = :primaryKey';
        $fields['id'] =  $this->primaryKey;
        $fields = $this->processDate($fields);
        $this->query($query, $fields);
    }
    public function findAll($column = null){
        $query = isset($column) ? 'SELECT  DISTINCT '. $column . ' FROM `' . $this->table .'`' : 'SELECT * FROM `' . $this->table .'`';
        $rows = $this->query($query);
        return $rows->fetchAll();
    }
    public function findById($column, $value){
        $query = 'SELECT * FROM `' . $this->table . '` WHERE `' . $column . '` = :value';
        $parameters = [':value' => $value];
        $result = $this->query($query, $parameters);
        $row = $result->fetchAll();
        return $row;
    }

    public function total($column){
        $sql = 'SELECT  COUNT(DISTINCT $column) FROM `' . $this->table . '`';
        $result = $this->query($sql);
        $row = $result->fetch();
        return $row[0];
    }

    public function save($record){
        var_dump($record[$this->primaryKey]);
        try {
            if ($record[$this->primaryKey] == ''){
                $record[$this->primaryKey] = null;
            }
            $this->insert($record);
        } catch (\PDOException $e) {
            // $this->update($record);
        }
    }
    public function delete($value){
        $query = 'DELETE FROM `'. $this->table . '` WHERE `'. $this->primaryKey . '` :value';
        $parameters = [':value' => $value];
        $this->query($query, $parameters);
    }

    
}