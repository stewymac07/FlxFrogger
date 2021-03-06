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
com.flashartofwar.frogger.states
{
    import flash.events.MouseEvent;

    import org.flixel.FlxG;
    import org.flixel.FlxSprite;
    import org.flixel.FlxState;
    import org.flixel.FlxText;

    public class StartState extends FlxState
    {
        [Embed(source="../../../../../build/assets/frogger_title.gif")]
        private var TitleSprite:Class;

        [Embed(source="../../../../../build/assets/frogger_sounds.swf", symbol="FroggerThemeSound")]
        private static var FroggerThemeSound:Class;

        /**
         * This is the first game state the player sees. Simply lets them click anywhere to start.
         */
        public function StartState()
        {
            super();
        }

        /**
         * Goes through and creates the graphics needed to display the start message
         */
        override public function create():void
        {
            var sprite:FlxSprite = new FlxSprite();
            sprite.createGraphic(FlxG.width, FlxG.height / 2, 0xff000047);
            add(sprite);

            stage.addEventListener(MouseEvent.CLICK, onClick);

            var title:FlxSprite = new FlxSprite(0, 100, TitleSprite);
            title.x = (FlxG.width * .5) - (title.width * .5);
            add(title);

            add(new FlxText(0, 200, FlxG.width, "PUSH").setFormat(null, 18, 0xffffffff, "center"));
            add(new FlxText(0, 300, FlxG.width, "ANYWHERE TO START").setFormat(null, 18, 0xd33bd1, "center"));

            //TODO Add frogs animating across the screen
            //TODO Add rules for score to the botton

        }

        /**
         * Handles when the user clicks and changes to the PlayState.
         * @param event MouseEvent
         */
        private function onClick(event:MouseEvent):void
        {

            FlxG.state = new PlayState();

            // Sound is played after the state switch to keep it from being destroyed
            FlxG.play(FroggerThemeSound);

        }

        /**
         * This removed the click listener.
         */
        override public function destroy():void
        {
            stage.removeEventListener(MouseEvent.CLICK, onClick);
            super.destroy();
        }

    }
}