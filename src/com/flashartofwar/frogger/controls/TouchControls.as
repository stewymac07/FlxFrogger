/*
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package
com.flashartofwar.frogger.controls
{
    import flash.events.KeyboardEvent;

    import org.flixel.FlxG;
    import org.flixel.FlxGroup;
    import org.flixel.FlxState;
    import org.flixel.FlxText;
    import org.flixel.touch.FlxTouchButton;

    public class TouchControls
    {
        private var btn:FlxTouchButton;
        private var btn2:FlxTouchButton;
        private var btn3:FlxTouchButton;
        private var btn4:FlxTouchButton;
        private var group:FlxGroup;

        /**
         * Touch controls are special buttons that allow virtual input for the game on devices without a keyboard.
         *
         * @param target Where should the controls be added onto
         * @param x x position to display the controls
         * @param y y position to display the controls
         * @param padding space between each button
         */
        public function TouchControls(target:FlxState, x:int, y:int, padding:int)
        {

            group = target.add(new FlxGroup()) as FlxGroup;
            group.x = x;
            group.y = y;

            btn = new FlxTouchButton(0, 0, 100, 100, onUpPress, onUpRelease);
            btn.loadText(new FlxText(0, 30, 100, "UP").setFormat(null, 20, 0xffffff, "center"));
            group.add(btn);

            btn2 = new FlxTouchButton(btn.x + btn.width + padding, btn.y, 100, 100, onDownPress, onDownRelease);
            btn2.loadText(new FlxText(0, 30, 100, "DOWN").setFormat(null, 20, 0xffffff, "center"));
            group.add(btn2);

            btn3 = new FlxTouchButton(btn2.x + btn2.width + padding, btn.y, 100, 100, onLeftPress, onLeftRelease);
            btn3.loadText(new FlxText(0, 30, 100, "LEFT").setFormat(null, 20, 0xffffff, "center"));
            group.add(btn3);

            btn4 = new FlxTouchButton(btn3.x + btn3.width + padding, btn.y, 100, 100, onRightPress, onRightRelease);
            btn4.loadText(new FlxText(0, 30, 100, "RIGHT").setFormat(null, 20, 0xffffff, "center"));
            group.add(btn4);

        }

        private function onLeftRelease():void
        {
            FlxG.keys.handleKeyUp(new KeyboardEvent(KeyboardEvent.KEY_UP, true, false, 0, 37, 0, false, false, false));
        }

        private function onLeftPress():void
        {
            FlxG.keys.handleKeyDown(new KeyboardEvent(KeyboardEvent.KEY_DOWN, true, false, 0, 37, 0, false, false, false));
        }

        private function onRightRelease():void
        {
            FlxG.keys.handleKeyUp(new KeyboardEvent(KeyboardEvent.KEY_UP, true, false, 0, 39, 0, false, false, false));
        }

        private function onRightPress():void
        {
            FlxG.keys.handleKeyDown(new KeyboardEvent(KeyboardEvent.KEY_DOWN, true, false, 0, 39, 0, false, false, false));
        }

        private function onUpRelease():void
        {
            FlxG.keys.handleKeyUp(new KeyboardEvent(KeyboardEvent.KEY_UP, true, false, 0, 38, 0, false, false, false));
        }

        private function onUpPress():void
        {
            FlxG.keys.handleKeyDown(new KeyboardEvent(KeyboardEvent.KEY_DOWN, true, false, 0, 38, 0, false, false, false));
        }

        private function onDownRelease():void
        {
            FlxG.keys.handleKeyUp(new KeyboardEvent(KeyboardEvent.KEY_UP, true, false, 0, 40, 0, false, false, false));
        }

        private function onDownPress():void
        {
            FlxG.keys.handleKeyDown(new KeyboardEvent(KeyboardEvent.KEY_DOWN, true, false, 0, 40, 0, false, false, false));
        }
    }
}