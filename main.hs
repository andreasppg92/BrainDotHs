import Graphics.Rendering.OpenGL
import Graphics.UI.GLUT

main :: IO ()
main = do
	(progname, args) <- getArgsAndInitialize
	createWindow "BrainDotHs"
	fullScreen
	reshapeCallback $= Just reshape
	displayCallback $= display
	mainLoop

reshape :: Size -> IO()
reshape size = do
	viewport $= (Position 0 0, size)
	postRedisplay Nothing

display :: IO ()
display = do
 clear [ColorBuffer]
 swapBuffers
