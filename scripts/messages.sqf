_text1 = parseText format ["<t color='#00E855' size='1.2'>Welcome to the Top Dallas Server</t>"];
_text2 = parseText format ["<t color='#FF0000' size='1.2'>Press ( ~ ) to see the Debug Console!</t>"];
_text3 = parseText format ["<t color='#00E855' size='1.2'>Press ( H ) to Holster/Un-holster weapon</t>"];
_text4 = parseText format ["<t color='#FF0000' size='1.2'>Double left click = Use item from inventory, enter crating menu, sell/buy items from trader</t>"];



while {true} do
{
sleep 600;
hint _text1;
sleep 600;
hint _text2;
sleep 600;
hint _text3;
sleep 600;
hint _text4;
};