//* 支店商品テーブルに
	支社名
	支店名
	商品名
	の列を追加する
*//
SELECT
	-- 支社名を選択
	office_name AS '支社名',
	-- 支店名を選択
	branch_name AS '支店名',
	-- 商品名を選択
	product_name AS '商品名'
FROM
	office_products
