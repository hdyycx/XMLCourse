xquery version "1.0";

declare namespace ext="http://www.altova.com/xslt-extensions";

<movies xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<!--°´idÅÅÐò-->
{
	for $movie at $index
	in doc("movie.xml")/movies/movie
	let $moiveid := $movie/@id
	order by $moiveid
	return
	<movie_order_by_id index="{$index}">
	{$movie/name}
	</movie_order_by_id>
}

<!--order by Œ‰score-->
{
	for $movie at $index
	in doc("movie.xml")/movies/movie
	let $score :=$movie/score
	order by $score
	return
	<movie_order_by_score index="{$index}">
	{$movie/name}
	{$movie/score}
	</movie_order_by_score>
}
<!--order by Œ‰Œ‰name-->
{
	for $movie at $index
	in doc("movie.xml")/movies/movie
	let $name :=$movie/name
	order by $name
	return
	<movie_order_by_name index="{$index}">
	{$movie/name}
	</movie_order_by_name>
}
<!--order by Œ‰name,score-->
{
	for $movie at $index
	in doc("movie.xml")/movies/movie
	let $name :=$movie/name
	let $score :=$movie/score
	order by $name,$score
	return
	<movie_order_by_Combination index="{$index}">
	{$movie/name}
	{$movie/score}
	</movie_order_by_Combination>
}
<!--get the newest messages-->
{
for $movie at $index
	in doc("movie.xml")/movies/movie
	let $day := xs:date("2014-08-01")-xs:date($movie/@publishTime)
	let $d := fn:days-from-duration($day) 
	where $d < 30
	return
	<movie_new index="{$index}">
	{$movie/name}
	{$d}
	</movie_new>
}
</movies> 