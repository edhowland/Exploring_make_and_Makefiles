take3 () 
{ 
    echo $1 $2 $3
}
len () 
{ 
    wc -l $1 | cut -d ' ' -f 1
}
drop () 
{ 
    slen=$(len $2);
    offset=$(expr $slen - $1);
    tail -n $offset $2
}
loc_prev () 
{ 
    expr $(loc $1) - 2
}
nbors () 
{ 
    take3 $(drop $(loc_prev $1) deck.slides)
}
