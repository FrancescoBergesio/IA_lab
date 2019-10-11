/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package libreria.analysis.function;

import libreria.analysis.FunctionUtils;
import libreria.analysis.UnivariateFunction;
import libreria.analysis.DifferentiableUnivariateFunction;
import libreria.analysis.differentiation.DerivativeStructure;
import libreria.analysis.differentiation.UnivariateDifferentiableFunction;

/**
 * Inverse function.
 *
 * @since 3.0
 */
public class Inverse implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {
    /** {@inheritDoc} */
    public double value(double x) {
        return 1 / x;
    }

    /** {@inheritDoc}
     * @deprecated as of 3.1, replaced by {@link #value(DerivativeStructure)}
     */
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    /** {@inheritDoc}
     * @since 3.1
     */
    public DerivativeStructure value(final DerivativeStructure t) {
        return t.reciprocal();
    }

}