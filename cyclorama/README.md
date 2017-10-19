# cyclorama

This is a simple sketch that oscillates 'rgb' values based on the position of the
mouse on the canvas.

The `y` coordinate determines which value is currently changing. If the mouse
is in the top third of the canvas, the red value will change. Similarly, the
middle third and bottom third of the canvas correspond to green and blue
respectively.

The `x` coordinate determines the rate at which the values are changed. The
range of `x` values are mapped to the range (4, 80), so if the mouse it at the
far left of the canvas the `rgb` value will update by 4 per second. If the
mouse is at the far right end, it will update by 80 per second.
