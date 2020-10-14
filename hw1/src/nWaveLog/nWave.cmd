wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/hsieh/DLIC/hw1/src/booth.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/booth_tb"
wvGetSignalSetScope -win $_nWave1 "/booth_tb/booth"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/booth_tb/booth/i\[31:0\]} \
{/booth_tb/booth/in1\[5:0\]} \
{/booth_tb/booth/in2\[5:0\]} \
{/booth_tb/booth/mul\[6:0\]} \
{/booth_tb/booth/out\[11:0\]} \
{/booth_tb/booth/tmp\[12:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvResizeWindow -win $_nWave1 2222 207 1323 725
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 43.227349
wvSetCursor -win $_nWave1 43.227349
wvSetCursor -win $_nWave1 43.227349
wvResizeWindow -win $_nWave1 2222 207 1323 725
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvExpandBus -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetCursor -win $_nWave1 530.344577 -snap {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 157.054832 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 662.361681 -snap {("G1" 3)}
