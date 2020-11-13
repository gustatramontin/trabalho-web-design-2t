<?php

class Model {

    private $conn;
    private $ini;
    private $servername;
    private $db_name;
    private $username;
    private $password;

    function __construct() {
        $this->ini = parse_ini_file('config.ini');
        
        if ($_SERVER['SERVER_NAME'] == 'gtramontin.hyperphp.com') {
            $this->servername = $this->ini['name'];
            $this->username = $this->ini['user'];
            $this->password = $this->ini['password'];
            $this->db_name = $this->ini['db_name'];
        } else {
            $this->servername = $this->ini['local_name'];
            $this->username = $this->ini['local_user'];
            $this->password = $this->ini['local_password'];
            $this->db_name = $this->ini['local_db_name'];
        }

        try {
            $this->conn = new PDO(
                "mysql:host=$this->servername;dbname=$this->db_name;charset=utf8",
                $this->username,
                $this->password
            );

            // set the PDO error mode to exception
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    }

    function query($sql) {
        $res = $this->conn->query($sql);

        return $res;

    }

    function select($sql) {
        $res = $this->query($sql);

        $rows = $res->fetchAll(PDO::FETCH_ASSOC);

        return $rows;
    }

    function fix_date($date, $format) {
        $obj_date = strtotime($date);
        
        return date($format, $obj_date);
    }

    function get_news() {
        $sql = "select * from news";

        $rows = $this->select($sql);

        $news = [];

        foreach($rows as $row) {
            $new_date = $this->fix_date($row['creation_date'], "d-m-Y");

            $news[] = [
                "title" => $row["title"],
                "content" => $row["content"],
                "date" => $new_date
            ];
        }

        $this->close();

        return $news;
    }

    function get_class_teachers() {
    
        $sql = "select * from info_102 where teacher='1'";
        $rows = $this->select($sql);

        $teachers = [];

        foreach($rows as $row) {
            $teachers[] = [
                "real_name" => $row["real_name"],
                "user_name" => $row["user_name"],
                "email" => $row["email"]
            ];
        }
        
        return $teachers;
    }

    function get_class_students() {
        $sql = "select * from info_102 where teacher='0' order by real_name";
        $rows = $this->select($sql);

        $students = [];

        foreach($rows as $row) {
            $students[] = [
                "real_name" => $row["real_name"],
                "user_name" => $row["user_name"],
                "email" => $row["email"]
            ];
        }
        
        $this->close();

        return $students;
    }


    function get_aticvities() {
        $sql = "select * from teaching_plan";

        $rows = $this->select($sql); 

        $activities = [];

        foreach($rows as $row) {
            $activities[] = [
                "name" => $row["ativ_name"],
                "start" => $this->fix_date($row["start_date"], "d-m"),
                "end" => $this->fix_date($row["delivery_date"], "d-m"),
                "link" => $row["link"],
                "type" => $row['ativ_type']
            ];
        }

        $this->close();

        return $activities;
    }

    function close() {
        $this->conn == null;
    }
}