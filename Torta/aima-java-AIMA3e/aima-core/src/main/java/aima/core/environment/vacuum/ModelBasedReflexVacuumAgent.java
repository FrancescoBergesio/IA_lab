package aima.core.environment.vacuum;

import aima.core.agent.Action;
import aima.core.agent.Model;
import aima.core.agent.impl.SimpleAgent;
import aima.core.agent.impl.DynamicState;
import aima.core.agent.impl.aprog.ModelBasedReflexAgentProgram;
import aima.core.agent.impl.aprog.simplerule.ANDCondition;
import aima.core.agent.impl.aprog.simplerule.EQUALCondition;
import aima.core.agent.impl.aprog.simplerule.Rule;

import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;

/**
 * @author Ciaran O'Reilly
 * @author Ruediger Lunde
 * 
 */
public class ModelBasedReflexVacuumAgent extends SimpleAgent<VacuumPercept, Action> {

	private static final String CURRENT_LOCATION = "currentLocation";
	private static final String CURRENT_STATE = "currentState";
	private static final String STATE_LOCATION_A = "stateLocationA";
	private static final String STATE_LOCATION_B = "stateLocationB";
	
	public ModelBasedReflexVacuumAgent() {
		super(new ModelBasedReflexAgentProgram<VacuumPercept, Action>() {
			@Override
			protected void init() {
				setState(new DynamicState());
				setRules(getRuleSet());
			}

			@Override
			protected DynamicState updateState(DynamicState state,
					Action anAction, VacuumPercept percept, Model model) {

				Object loc = percept.getCurrLocation();
				Object locState = percept.getCurrState();
				state.setAttribute(CURRENT_LOCATION, loc);
				state.setAttribute(CURRENT_STATE, locState);
				// Keep track of the state of the different locations
				if (Objects.equals(VacuumEnvironment.LOCATION_A, loc))
					state.setAttribute(STATE_LOCATION_A, locState);
				else
					state.setAttribute(STATE_LOCATION_B, locState);
				return state;
			}
		});
	}

	//
	// PRIVATE METHODS
	//
	private static Set<Rule<Action>> getRuleSet() {
		// Note: Using a LinkedHashSet so that the iteration order (i.e. implied
		// precedence) of rules can be guaranteed.
		Set<Rule<Action>> rules = new LinkedHashSet<>();

		rules.add(new Rule<>(new ANDCondition
				(new EQUALCondition(STATE_LOCATION_A, VacuumEnvironment.LocationState.Clean),
				new EQUALCondition(STATE_LOCATION_B, VacuumEnvironment.LocationState.Clean)),
				null));
		rules.add(new Rule<>(new EQUALCondition(CURRENT_STATE, VacuumEnvironment.LocationState.Dirty),
				VacuumEnvironment.ACTION_SUCK));
		rules.add(new Rule<>(new EQUALCondition(CURRENT_LOCATION, VacuumEnvironment.LOCATION_A),
				VacuumEnvironment.ACTION_MOVE_RIGHT));
		rules.add(new Rule<>(new EQUALCondition(CURRENT_LOCATION, VacuumEnvironment.LOCATION_B),
				VacuumEnvironment.ACTION_MOVE_LEFT));

		return rules;
	}
}
