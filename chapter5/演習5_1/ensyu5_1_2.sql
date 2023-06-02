SELECT DISTINCT
	-- 支社名を選択
	office_name AS '支社名',
	-- 支店名を選択
	branch_name AS '支店名',
	-- 商品名を選択
	product_name AS '商品名'
FROM
	(
		-- 支社テーブル
		offices AS off
	-- 支店テーブルと内部結合
	INNER JOIN
		branches AS bra
	-- 支社コードを結合するキーとする
	ON
		off.office_code = bra.office_code
	)
-- 内部結合する
RIGHT JOIN
	(
		-- 支店商品テーブル
		office_products AS offpro
	-- 商品テーブルと内部結合する
	INNER JOIN
		products AS pro
	-- 商品コードを結合するキーとする
	ON
		offpro.product_code = pro.product_code
	)
-- 支社コードと支店コードを結合するキーとする
ON
	off.office_code = offpro.office_code
	AND
	offpro.branch_code = bra.branch_code
;
