package aima.test.core.unit;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

import aima.test.core.unit.agent.AgentTestSuite;
import aima.test.core.unit.environment.EnvironmentTestSuite;
import aima.test.core.unit.learning.LearningTestSuite;
import aima.test.core.unit.logic.LogicTestSuite;
import aima.test.core.unit.nlp.NLPTestSuite;
import aima.test.core.unit.probability.ProbabilityTestSuite;
import aima.test.core.unit.search.SearchTestSuite;
import aima.test.core.unit.util.UtilTestSuite;
import aima.test.core.unit.util.math.geom.GeometryTestSuite;

@RunWith(Suite.class)
@Suite.SuiteClasses({ AgentTestSuite.class, EnvironmentTestSuite.class,
		LearningTestSuite.class, LogicTestSuite.class, NLPTestSuite.class,
		ProbabilityTestSuite.class, SearchTestSuite.class, UtilTestSuite.class, GeometryTestSuite.class })
public class AllAIMAUnitTestSuite {
}
