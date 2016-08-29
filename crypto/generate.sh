#!/bin/sh

topic="asymmetric"

make_layer_visible() {
	xmlstarlet ed -P -N svg=http://www.w3.org/2000/svg -u '//*/svg:g[@inkscape:label="$0"]/@style' -v "display:inline";
}


#mkdir $topic"_slidesvgs"
slidesvg=$(cat asymmetric.svg | make_layer_visible("parties"));
