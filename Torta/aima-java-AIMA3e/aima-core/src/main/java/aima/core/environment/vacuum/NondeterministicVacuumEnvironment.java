package aima.core.environment.vacuum;

import aima.core.agent.Action;
import aima.core.agent.Agent;

/**
 * Create the erratic vacuum world from page 134, AIMA3e. In the erratic vacuum
 * world, the Suck action works as follows: 1) when applied to a dirty square
 * the action cleans the square and sometimes cleans up dirt in an adjacent
 * square too; 2) when applied to a clean square the action sometimes deposits
 * dirt on the carpet.
 *
 * @author Andrew Brown
 * @author Ruediger Lunde
 */
public class NondeterministicVacuumEnvironment extends VacuumEnvironment {

    /**
     * Construct a vacuum environment with two locations, in which dirt is
     * placed at random.
     */
    public NondeterministicVacuumEnvironment() {
        super();
    }

    /**
     * Construct a vacuum environment with two locations, in which dirt is
     * placed as specified.
     *
     * @param locAState the initial state of location A, which is either
     * <em>Clean</em> or <em>Dirty</em>.
     * @param locBState the initial state of location B, which is either
     * <em>Clean</em> or <em>Dirty</em>.
     */
    public NondeterministicVacuumEnvironment(LocationState locAState, LocationState locBState) {
        super(locAState, locBState);
    }

    /**
     * Execute the agent action
     */
    @Override
    public void execute(Agent<?, ?> agent, Action action) {
        if (ACTION_MOVE_RIGHT == action) {
            envState.setAgentLocation(agent, LOCATION_B);
            updatePerformanceMeasure(agent, -1);
        } else if (ACTION_MOVE_LEFT == action) {
            envState.setAgentLocation(agent, LOCATION_A);
            updatePerformanceMeasure(agent, -1);
        } else if (ACTION_SUCK == action) {
            // case: square is dirty
            if (VacuumEnvironment.LocationState.Dirty == envState.getLocationState(envState.getAgentLocation(agent))) {
                String currentLocation = envState.getAgentLocation(agent);
                String adjacentLocation = (currentLocation.equals("A")) ? "B" : "A";
                // always clean current square
                envState.setLocationState(currentLocation, VacuumEnvironment.LocationState.Clean);
                // possibly clean adjacent square
                if (Math.random() > 0.5) {
                    envState.setLocationState(adjacentLocation, VacuumEnvironment.LocationState.Clean);
                }
            } // case: square is clean
            else if (VacuumEnvironment.LocationState.Clean == envState.getLocationState(envState.getAgentLocation(agent))) {
                // possibly dirty current square
                if (Math.random() > 0.5) {
                    envState.setLocationState(envState.getAgentLocation(agent), VacuumEnvironment.LocationState.Dirty);
                }
            }
        }
    }
}
