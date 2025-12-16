
function Explode(_user,_range, _damage){
	with (o_actor)
{
    var _dist = point_distance(_user.x, _user.y, x, y);

    if (_dist <= _range)
    {
        hp -= _damage;

    }
}
}

