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
{
    import com.flashartofwar.frogger.states.StartState;

    import flash.ui.Multitouch;
    import flash.ui.MultitouchInputMode;

    import org.flixel.FlxG;
    import org.flixel.FlxGame;

    [SWF(width="480", height="800", backgroundColor="#000000")]
    [Frame(factoryClass="Preloader")]

    public class FlxFrogger extends FlxGame
    {
        /**
         * This is the main game constructor.
         */
        public function FlxFrogger()
        {

            // Put custom mobile code here. This is toggled in the ANT Build properties file.
            CONFIG::mobile
            {
                Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
                FlxG.mobile = true;
            }

            // Create Flixel Game.
            super(480, 800, StartState, 1);

        }
    }
}
