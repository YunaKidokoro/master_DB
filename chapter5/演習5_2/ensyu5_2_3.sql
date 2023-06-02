-- 支店商品テーブルに商品数の列を追加する
SELECT
	office_code AS '支社コード',
	branch_code AS '支店コード',
	MAX(num_of_product) AS '商品数'
FROM
	office_products
;
