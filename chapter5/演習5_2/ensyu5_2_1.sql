-- 商品テーブルに商品分類名の列を追加する
SELECT
	-- 商品分類ごとの商品数を数える
	COUNT(group_name) AS '商品数',
	-- 分類名を選択する
	group_name AS '分類名'
-- 商品テーブルから
FROM
	products
GROUP BY
	-- 分類コードと分類名でグループ化
	group_code,
	group_name
;
