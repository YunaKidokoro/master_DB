SELECT
	-- 商品分類ごとの商品数を数える
	COUNT(pg.group_name) AS '商品数',
	-- 分類名を選択する
	pg.group_name AS '分類名'
-- 商品分類テーブルから
FROM
	product_group AS pg
-- 商品テーブルと内部結合
INNER JOIN
	products AS pr
ON
	-- 商品分類コードを結合するキーにする
	pr.group_code = pg.group_code
GROUP BY
	-- 分類コードと分類名でグループ化
	pg.group_code,
	pg.group_name
;
