package aima.core.environment.eightpuzzle;

import java.util.ArrayList;
import java.util.List;

import aima.core.agent.Action;
import aima.core.agent.impl.DynamicAction;
import aima.core.util.datastructure.XYLocation;

/**
 * @author Ravi Mohan
 * @author Ruediger Lunde
 */
public class EightPuzzleBoard {

	public static Action LEFT = new DynamicAction("Left");
	public static Action RIGHT = new DynamicAction("Right");
	public static Action UP = new DynamicAction("Up");
	public static Action DOWN = new DynamicAction("Down");
	private int[] state;

	//
	// PUBLIC METHODS
	//

	public EightPuzzleBoard() {
		state = new int[] { 5, 4, 0, 6, 1, 8, 7, 3, 2 };
	}

	public EightPuzzleBoard(int[] state) {
		this.state = new int[state.length];
		System.arraycopy(state, 0, this.state, 0, state.length);
	}

	public EightPuzzleBoard(EightPuzzleBoard copyBoard) {
		this(copyBoard.getState());
	}

	public int[] getState() {
		return state;
	}

	public int getValueAt(XYLocation loc) {
		return getValueAt(loc.getX(), loc.getY());
	}

	public XYLocation getLocationOf(int val) {
		int absPos = getPositionOf(val);
		return new XYLocation(getXCoord(absPos), getYCoord(absPos));
	}

	public void moveGapRight() {
		int gapPos = getGapPosition();
		int x = getXCoord(gapPos);
		int y = getYCoord(gapPos);
		if (x != 2) {
			setValue(x, y, getValueAt(x + 1, y));
			setValue(x + 1, y, 0);
		}
	}

	public void moveGapLeft() {
		int gapPos = getGapPosition();
		int x = getXCoord(gapPos);
		int y = getYCoord(gapPos);
		if (x != 0) {
			setValue(x, y, getValueAt(x - 1, y));
			setValue(x - 1, y, 0);
		}
	}

	public void moveGapDown() {
		int gapPos = getGapPosition();
		int x = getXCoord(gapPos);
		int y = getYCoord(gapPos);
		if (y != 2) {
			setValue(x, y, getValueAt(x, y + 1));
			setValue(x, y + 1, 0);
		}

	}

	public void moveGapUp() {
		int gapPos = getGapPosition();
		int x = getXCoord(gapPos);
		int y = getYCoord(gapPos);
		if (y != 0) {
			setValue(x, y, getValueAt(x, y - 1));
			setValue(x, y - 1, 0);
		}
	}

	public List<XYLocation> getPositions() {
		ArrayList<XYLocation> result = new ArrayList<>(9);
		for (int i = 0; i < 9; i++) {
			int absPos = getPositionOf(i);
			result.add(new XYLocation(getXCoord(absPos), getYCoord(absPos)));
		}
		return result;
	}

	public void setBoard(List<XYLocation> locs) {
		int count = 0;
		for (XYLocation loc : locs)
			setValue(loc.getX(), loc.getY(), count++);
	}

	public boolean canMoveGap(Action action) {
		boolean result = true;
		int absPos = getPositionOf(0);
		if (action.equals(LEFT))
			result = (getXCoord(absPos) != 0);
		else if (action.equals(RIGHT))
			result = (getXCoord(absPos) != 2);
		else if (action.equals(UP))
			result = (getYCoord(absPos) != 0);
		else if (action.equals(DOWN))
			result = (getYCoord(absPos) != 2);
		return result;
	}

	@Override
	public boolean equals(Object o) {
		if (o != null && getClass() == o.getClass()) {
			EightPuzzleBoard aBoard = (EightPuzzleBoard) o;
			for (int i = 0; i < 9; i++) {
				if (state[i] != aBoard.state[i])
					return false;
			}
			return true;
		}
		return false;
	}

	@Override
	public int hashCode() {
		int result = 17;
		for (int i = 0; i < 8; i++) {
			int position = this.getPositionOf(i);
			result = 37 * result + position;
		}
		return result;
	}

	@Override
	public String toString() {
		return state[0] + " " + state[1] + " " + state[2] + "\n"
				+ state[3] + " " + state[4] + " " + state[5] + " " + "\n"
				+ state[6] + " " + state[7] + " " + state[8];
	}

	//
	// PRIVATE METHODS
	//

	/**
	 * Note: The graphic representation maps x values on row numbers (x-axis in
	 * vertical direction).
	 */
	private int getXCoord(int absPos) {
		return absPos % 3;
	}

	/**
	 * Note: The graphic representation maps y values on column numbers (y-axis
	 * in horizontal direction).
	 */
	private int getYCoord(int absPos) {
		return absPos / 3;
	}

	private int getAbsPosition(int x, int y) {
		return x + 3 * y;
	}

	private int getValueAt(int x, int y) {
		// refactor this use either case or a div/mod soln
		return state[getAbsPosition(x, y)];
	}

	private int getGapPosition() {
		return getPositionOf(0);
	}

	private int getPositionOf(int val) {
		for (int i = 0; i < 9; i++)
			if (state[i] == val)
				return i;
		return -1;
	}

	private void setValue(int x, int y, int val) {
		int absPos = getAbsPosition(x, y);
		state[absPos] = val;
	}
}
