
dmember(Element, [Head|_]:- dmember(Element, Head).
dmember(Element [_|Tail]):- dmember(Element, Tail). 
dmember(Element, Element).