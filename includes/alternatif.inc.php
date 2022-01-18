<?php
class Alternatif
{
	private $conn;

	public $id;
	public $nik;
	public $nama;
	public $tempat_lahir;
	public $tanggal_lahir;
	public $kelamin;
	public $alamat;
	public $jabatan;
	public $tanggal_masuk;
	public $pendidikan;
	public $hasil_akhir;
	public $skor_alternatif;

	public $periode;

	public function __construct($db)
	{
		$this->conn = $db;
	}

	function insert()
	{
		$query = "INSERT INTO data_alternatif VALUES(?, ?, ?, ?, ?)";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->id);
		$stmt->bindParam(2, $this->nama);
		$stmt->bindParam(3, $this->tanggal_lahir);
		$stmt->bindParam(4, $this->kelamin);
		$stmt->bindParam(5, $this->tanggal_masuk);

		if ($stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}

	function readAll()
	{
		$query = "SELECT * FROM data_alternatif ORDER BY id_alternatif ASC";
		$stmt = $this->conn->prepare($query);
		$stmt->execute();

		return $stmt;
	}

	function readByFilter()
	{
		$query = "SELECT a.*, AVG(b.nilai) AS nilai, b.keterangan FROM data_alternatif a JOIN nilai_awal b ON a.id_alternatif=b.id_alternatif  GROUP BY a.id_alternatif";
		$stmt = $this->conn->prepare($query);
		$stmt->execute();

		return $stmt;
	}

	function countByFilter()
	{
		$query = "SELECT * FROM data_alternatif a JOIN nilai_awal b ON a.id_alternatif=b.id_alternatif WHERE b.keterangan='B' ";
		$stmt = $this->conn->prepare($query);
		$stmt->execute();

		return $stmt->rowCount();
	}

	function readAllWithNilai()
	{
		$query = "SELECT *, b.nilai, b.keterangan
				FROM data_alternatif a
					JOIN nilai_awal b ON a.id_alternatif=b.id_alternatif
				WHERE a.id_alternatif IN (SELECT id_alternatif FROM nilai_awal)
				ORDER BY a.id_alternatif";
		$stmt = $this->conn->prepare($query);
		$stmt->execute();

		return $stmt;
	}

	function readByRank()
	{
		$query = "SELECT *
				FROM data_alternatif a
					JOIN nilai_awal b ON a.id_alternatif=b.id_alternatif
				WHERE b.keterangan='B'
					AND b.periode=?
				ORDER BY hasil_akhir DESC
				LIMIT 0,5";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->periode);
		$stmt->execute();

		return $stmt;
	}

	function countAll()
	{
		$query = "SELECT * FROM data_alternatif ORDER BY id_alternatif ASC";
		$stmt = $this->conn->prepare($query);
		$stmt->execute();

		return $stmt->rowCount();
	}

	function readOne()
	{
		$query = "SELECT * FROM data_alternatif WHERE id_alternatif=? LIMIT 0,1";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->id);
		$stmt->execute();
		$row = $stmt->fetch(PDO::FETCH_ASSOC);

		$this->id = $row["id_alternatif"];

		$this->nama = $row["nama"];
		$this->tanggal_lahir = $row["tanggal_lahir"];
		$this->kelamin = $row["kelamin"];
		$this->hasil_akhir = $row["hasil_akhir"];
		// $this->skor_alternatif = $row['skor_alternatif'];
	}

	function readOneByNik()
	{
		$query = "SELECT * FROM data_alternatif WHERE nik=? LIMIT 0,1";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->nik);
		$stmt->execute();
		$row = $stmt->fetch(PDO::FETCH_ASSOC);

		$this->id = $row["id_alternatif"];
		$this->nik = $row["nik"];
		$this->nama = $row["nama"];
		$this->tanggal_lahir = $row["tanggal_lahir"];
		$this->kelamin = $row["kelamin"];
		$this->hasil_akhir = $row["hasil_akhir"];
		// $this->skor_alternatif = $row['skor_alternatif'];
	}

	function readSatu($a)
	{
		$query = "SELECT * FROM data_alternatif WHERE id_alternatif='$a' LIMIT 0,1";
		$stmt = $this->conn->prepare($query);
		$stmt->execute();

		return $stmt;
	}

	function getNewID()
	{
		$query = "SELECT MAX(id_alternatif) AS code FROM data_alternatif";
		$stmt = $this->conn->prepare($query);
		$stmt->execute();
		$row = $stmt->fetch(PDO::FETCH_ASSOC);

		if ($row) {
			return $this->genCode($row["code"], 'A', 3);
		} else {
			return $this->genCode($nomor_terakhir, 'A', 3);
		}
	}

	function genCode($latest, $key, $chars = 0)
	{
		$new = intval(substr($latest, strlen($key))) + 1;
		$numb = str_pad($new, $chars, "0", STR_PAD_LEFT);
		return $key . $numb;
	}

	function genNextCode($start, $key, $chars = 0)
	{
		$new = str_pad($start, $chars, "0", STR_PAD_LEFT);
		return $key . $new;
	}

	function update()
	{
		$query = "UPDATE data_alternatif
				SET
					nik = :nik,
					nama = :nama,
					tanggal_lahir = :tanggal_lahir,
					kelamin = :kelamin,
				WHERE
					id_alternatif = :id";
		$stmt = $this->conn->prepare($query);

		$stmt->bindParam(':nik', $this->nik);
		$stmt->bindParam(':nama', $this->nama);
		$stmt->bindParam(':tanggal_lahir', $this->tanggal_lahir);
		$stmt->bindParam(':kelamin', $this->kelamin);
		$stmt->bindParam(':id', $this->id);

		if ($stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}

	function delete()
	{
		$query = "DELETE FROM data_alternatif WHERE id_alternatif = ?";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->id);
		if ($result = $stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}

	function hapusell($ax)
	{
		$query = "DELETE FROM data_alternatif WHERE id_alternatif in $ax";
		$stmt = $this->conn->prepare($query);
		if ($result = $stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}
}
