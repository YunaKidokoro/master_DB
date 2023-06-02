SELECT
	-- 支社コードを取得
	office_code,
	-- 支店コードを取得
	branch_code,
	-- 支店ごとの商品数を取得
	COUNT(*) AS '商品数'
-- 支店商品テーブルから取得する
FROM
	office_products
-- 支店コードと支社コードでグループ化する
GROUP BY
	office_code,
	branch_code
-- グルーピングした結果に条件をつける
HAVING
-- カウント数(商品数)が最大値の時
count(*) = (
	SELECT
		-- カウント数の最大値を取得する
		max(cnt)
	-- 支社・支店コードでグループ化した時の商品数から
	FROM
	(
		select count(*) as cnt
	FROM
		office_products
	GROUP BY
		office_code,
		branch_code
	-- サブクエリでできた表に名前を付けておく
	)as count_subquery
)
;
