<?php

ini_set('display_error', 1);

class MysqlDB
{

	// === インサート用
	public function Insert_DATA($table, $data)
	{

		try {

			$pdo = new PDO(PDO_DSN, DB_USER, DB_PASS);

			// データ挿入の準備
			$columns = array_keys($data);
			$set_columns = implode(',', $columns); // カラム作成
			$placeholders = ":" . implode(', :', $columns); // プレースホルダー作成

			$stmt = $pdo->prepare("INSERT INTO $table ($set_columns) VALUES ($placeholders)");

			if (!$stmt) {
				die('プリペアードステートメントエラー smtp ');
			}

			// パラメータとバインド
			foreach ($data as $key => $value) {
				$stmt->bindValue(":$key", $value);
			}

			$result = $stmt->execute();

			if ($result) {
				return true;
			} else {
				return false;
			}

			echo "インサート完了";
		} catch (PDOException $e) {
			echo "insert エラー" . $e->getMessage();
		}

		$pdo = null;
	}
} // === END class MysqlDB
