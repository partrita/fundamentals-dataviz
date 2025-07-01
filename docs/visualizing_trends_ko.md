# 추세 시각화하기 {#visualizing-trends}

산점도(챕터 \@ref(visualizing-associations))나 시계열(챕터 \@ref(time-series))을 만들 때 개별 데이터 포인트가 어디에 있는지에 대한 구체적인 세부 정보보다는 데이터의 포괄적인 추세에 더 관심이 있는 경우가 많습니다. 실제 데이터 포인트 위나 대신에 일반적으로 직선 또는 곡선 형태로 추세를 그리면 독자가 데이터의 주요 특징을 즉시 볼 수 있도록 도와주는 시각화를 만들 수 있습니다. 추세를 결정하는 두 가지 기본적인 접근 방식이 있습니다. 이동 평균과 같은 방법으로 데이터를 평활화하거나 정의된 함수 형태의 곡선을 적합시킨 다음 적합된 곡선을 그릴 수 있습니다. 데이터 세트에서 추세를 식별한 후에는 추세에서 벗어난 부분을 구체적으로 살펴보거나 데이터를 기본 추세, 기존 주기적 구성 요소, 일시적인 구성 요소 또는 무작위 노이즈를 포함한 여러 구성 요소로 분리하는 것이 유용할 수 있습니다.

## 평활화

미국 30개 대형 상장 기업의 주가를 나타내는 주가 지수인 다우 존스 산업 평균 지수(줄여서 다우 존스)의 시계열을 생각해 보겠습니다. 특히 2008년 금융 위기 직후인 2009년을 살펴보겠습니다(그림 \@ref(fig:dow-jones)). 금융 위기의 끝자락인 2009년 첫 3개월 동안 시장은 2400포인트 이상(~27%) 하락했습니다. 그런 다음 나머지 기간 동안 천천히 회복되었습니다. 덜 중요한 단기 변동을 덜 강조하면서 이러한 장기 추세를 어떻게 시각화할 수 있을까요?

(ref:dow-jones) 2009년 다우 존스 산업 평균 지수의 일일 종가. 데이터 출처: Yahoo! Finance

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/dow-jones-1.png" alt="(ref:dow-jones)" width="685.714285714286" />
<p class="caption">(\#fig:dow-jones)(ref:dow-jones)</p>
</div>

통계 용어로 말하면 주식 시장 시계열을 *평활화*하는 방법을 찾고 있습니다. 평활화 작업은 관련 없는 사소한 세부 정보나 노이즈를 제거하면서 데이터의 주요 패턴을 포착하는 함수를 생성합니다. 금융 분석가들은 일반적으로 이동 평균을 계산하여 주식 시장 데이터를 평활화합니다. 이동 평균을 생성하려면 시간 창(예: 시계열의 처음 20일)을 가져와 이 20일 동안의 평균 가격을 계산한 다음 시간 창을 하루 이동하여 이제 2일에서 21일까지 포함하도록 한 다음 이 20일 동안의 평균을 계산하고 다시 시간 창을 이동하는 식으로 계속합니다. 결과는 평균 가격 시퀀스로 구성된 새로운 시계열입니다.

이동 평균 시퀀스를 플로팅하려면 각 시간 창의 평균을 어떤 특정 시점과 연관시킬지 결정해야 합니다. 금융 분석가들은 종종 각 평균을 해당 시간 창의 끝에 플로팅합니다. 이 선택은 원래 데이터보다 뒤처지는 곡선을 생성하며(그림 \@ref(fig:dow-jones-moving-ave)a), 평균 시간 창이 클수록 뒤처짐이 더 심해집니다. 반면에 통계학자들은 평균을 시간 창의 중앙에 플로팅하며, 이는 원래 데이터에 완벽하게 중첩되는 곡선을 생성합니다(그림 \@ref(fig:dow-jones-moving-ave)b).

(ref:dow-jones-moving-ave) 2009년 다우 존스 산업 평균 지수의 일일 종가, 20일, 50일, 100일 이동 평균과 함께 표시. (a) 이동 평균은 이동 시간 창의 끝에 플로팅됩니다. (b) 이동 평균은 이동 시간 창의 중앙에 플로팅됩니다. 데이터 출처: Yahoo! Finance

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/dow-jones-moving-ave-1.png" alt="(ref:dow-jones-moving-ave)" width="685.714285714286" />
<p class="caption">(\#fig:dow-jones-moving-ave)(ref:dow-jones-moving-ave)</p>
</div>

평활화된 시계열을 지연 유무에 관계없이 플로팅하든 관계없이 평균을 계산하는 시간 창의 길이가 평활화된 곡선에 남아 있는 변동의 규모를 설정한다는 것을 알 수 있습니다. 20일 이동 평균은 작고 단기적인 스파이크만 제거하고 그 외에는 일일 데이터를 밀접하게 따릅니다. 반면에 100일 이동 평균은 몇 주에 걸쳐 발생하는 상당히 큰 하락이나 급등도 제거합니다. 예를 들어 2009년 1분기에 7000포인트 아래로 급락한 것은 100일 이동 평균에서는 보이지 않으며 8000포인트 아래로 거의 내려가지 않는 완만한 곡선으로 대체됩니다(그림 \@ref(fig:dow-jones-moving-ave)). 마찬가지로 2009년 7월경의 하락은 100일 이동 평균에서는 완전히 보이지 않습니다.

이동 평균은 가장 단순한 평활화 방법이며 몇 가지 명백한 한계가 있습니다. 첫째, 원래 곡선보다 짧은 평활화된 곡선이 생성됩니다(그림 \@ref(fig:dow-jones-moving-ave)). 시작 또는 끝 또는 둘 다에서 일부가 누락됩니다. 그리고 시계열이 더 많이 평활화될수록(즉, 평균 창이 클수록) 평활화된 곡선이 더 짧아집니다. 둘째, 평균 창이 크더라도 이동 평균이 반드시 그렇게 매끄럽지는 않습니다. 대규모 평활화가 이루어졌음에도 불구하고 작은 융기나 구불거림이 나타날 수 있습니다(그림 \@ref(fig:dow-jones-moving-ave)). 이러한 구불거림은 평균 창에 들어가거나 나가는 개별 데이터 포인트로 인해 발생합니다. 창의 모든 데이터 포인트에 동일한 가중치가 부여되므로 창 경계의 개별 데이터 포인트가 평균에 눈에 띄는 영향을 미칠 수 있습니다.

통계학자들은 이동 평균의 단점을 완화하는 수많은 평활화 방법을 개발했습니다. 이러한 방법은 훨씬 더 복잡하고 계산 비용이 많이 들지만 현대 통계 컴퓨팅 환경에서 쉽게 사용할 수 있습니다. 널리 사용되는 방법 중 하나는 데이터의 하위 집합에 저차 다항식을 적합시키는 LOESS(국소 추정 산점도 평활화, @Cleveland1979)입니다. 중요하게도 각 하위 집합의 중앙에 있는 점은 경계에 있는 점보다 더 큰 가중치를 가지며 이 가중치 체계는 가중 평균보다 훨씬 더 매끄러운 결과를 생성합니다(그림 \@ref(fig:dow-jones-loess)). 여기에 표시된 LOESS 곡선은 100일 평균과 유사해 보이지만 이 유사성을 과대 해석해서는 안 됩니다. LOESS 곡선의 평활도는 매개변수를 조정하여 조정할 수 있으며 다른 매개변수 선택은 20일 또는 50일 평균과 더 유사한 LOESS 곡선을 생성했을 것입니다.

(ref:dow-jones-loess) 그림 \@ref(fig:dow-jones-moving-ave)의 다우 존스 데이터에 대한 LOESS 적합과 100일 이동 평균 비교. LOESS 평활화로 표시되는 전반적인 추세는 100일 이동 평균과 거의 동일하지만 LOESS 곡선은 훨씬 더 매끄럽고 데이터의 전체 범위로 확장됩니다. 데이터 출처: Yahoo! Finance

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/dow-jones-loess-1.png" alt="(ref:dow-jones-loess)" width="685.714285714286" />
<p class="caption">(\#fig:dow-jones-loess)(ref:dow-jones-loess)</p>
</div>

중요하게도 LOESS는 시계열에만 국한되지 않습니다. 이름에서 알 수 있듯이 임의의 산점도에 적용할 수 있습니다(*국소 추정 산점도 평활화*). 예를 들어 LOESS를 사용하여 자동차의 연료 탱크 용량과 가격 간의 관계 추세를 살펴볼 수 있습니다(그림 \@ref(fig:tank-capacity-loess)). LOESS 선은 저렴한 자동차(20,000달러 미만)의 경우 탱크 용량이 가격에 따라 거의 선형적으로 증가하지만 더 비싼 자동차의 경우 수평을 이룬다는 것을 보여줍니다. 약 20,000달러 이상의 가격에서는 더 비싼 자동차를 구입해도 연료 탱크가 더 큰 자동차를 얻을 수 없습니다.

(ref:tank-capacity-loess) 1993년 모델 연도에 출시된 93개 자동차의 연료 탱크 용량 대 가격. 각 점은 하나의 자동차에 해당합니다. 실선은 데이터의 LOESS 평활화를 나타냅니다. 연료 탱크 용량은 약 20,000달러까지 가격에 따라 거의 선형적으로 증가한 다음 수평을 이룹니다. 데이터 출처: 로빈 H. 록, 세인트로렌스 대학교

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/tank-capacity-loess-1.png" alt="(ref:tank-capacity-loess)" width="480" />
<p class="caption">(\#fig:tank-capacity-loess)(ref:tank-capacity-loess)</p>
</div>

LOESS는 사람의 눈에 보기 좋게 보이는 결과를 생성하는 경향이 있기 때문에 매우 인기 있는 평활화 방법입니다. 그러나 많은 개별 회귀 모델을 적합시켜야 합니다. 이로 인해 현대 컴퓨팅 장비에서도 대규모 데이터 세트의 경우 속도가 느립니다.

LOESS보다 빠른 대안으로 스플라인 모델을 사용할 수 있습니다. 스플라인은 매우 유연하면서도 항상 부드럽게 보이는 조각별 다항 함수입니다. 스플라인으로 작업할 때 *매듭*이라는 용어를 접하게 됩니다. 스플라인의 매듭은 개별 스플라인 세그먼트의 끝점입니다. *k*개의 세그먼트가 있는 스플라인을 적합시키려면 *k* + 1개의 매듭을 지정해야 합니다. 스플라인 적합은 특히 매듭 수가 너무 많지 않은 경우 계산적으로 효율적이지만 스플라인에는 자체적인 단점이 있습니다. 가장 중요한 것은 3차 스플라인, B-스플라인, 얇은 판 스플라인, 가우시안 프로세스 스플라인 등 매우 다양한 유형의 스플라인이 있으며 어떤 것을 선택해야 할지 명확하지 않을 수 있다는 것입니다. 특정 스플라인 유형과 매듭 수 선택은 동일한 데이터에 대해 크게 다른 평활화 함수를 생성할 수 있습니다(그림 \@ref(fig:tank-capacity-smoothers)).

(ref:tank-capacity-smoothers) 여러 평활화 모델은 특히 데이터 경계 근처에서 매우 다른 동작을 보입니다. (a) LOESS 평활기, 그림 \@ref(fig:tank-capacity-loess)에서와 같이. (b) 5개의 매듭이 있는 3차 회귀 스플라인. (c) 3개의 매듭이 있는 얇은 판 회귀 스플라인. (d) 6개의 매듭이 있는 가우시안 프로세스 스플라인. 데이터 출처: 로빈 H. 록, 세인트로렌스 대학교

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/tank-capacity-smoothers-1.png" alt="(ref:tank-capacity-smoothers)" width="754.285714285714" />
<p class="caption">(\#fig:tank-capacity-smoothers)(ref:tank-capacity-smoothers)</p>
</div>

대부분의 데이터 시각화 소프트웨어는 LOESS와 같은 국소 회귀 유형이나 스플라인 유형으로 구현된 평활화 기능을 제공합니다. 평활화 방법은 이러한 모든 유형의 평활기의 상위 집합인 GAM(일반화 가법 모델)이라고 할 수 있습니다. 평활화 기능의 출력은 적합된 특정 GAM 모델에 크게 의존한다는 점에 유의해야 합니다. 여러 다른 선택 사항을 시도하지 않으면 보이는 결과가 통계 소프트웨어에서 만든 특정 기본 선택 사항에 어느 정도 의존하는지 결코 깨닫지 못할 수 있습니다.

<div class="rmdtip">
<p>평활화 함수의 결과를 해석할 때는 주의하십시오. 동일한 데이터 세트를 여러 가지 다른 방식으로 평활화할 수 있습니다.</p>
</div>


## 정의된 함수 형태로 추세 표시하기

그림 \@ref(fig:tank-capacity-smoothers)에서 볼 수 있듯이 일반적인 평활기의 동작은 특정 데이터 세트에 대해 다소 예측 불가능할 수 있습니다. 이러한 평활기는 또한 의미 있는 해석을 갖는 매개변수 추정치를 제공하지 않습니다. 따라서 가능하면 데이터에 적합하고 명확한 의미를 갖는 매개변수를 사용하는 특정 함수 형태의 곡선을 적합시키는 것이 좋습니다.

연료 탱크 데이터의 경우 처음에는 선형적으로 증가하지만 일정한 값에서 수평을 이루는 곡선이 필요합니다. 함수 $y = A - B \exp(-mx)$가 그에 해당할 수 있습니다. 여기서 $A$, $B$, $m$은 데이터를 곡선에 적합시키기 위해 조정하는 상수입니다. 이 함수는 작은 $x$에 대해 거의 선형이며($y \approx A - B + B m x$), 큰 $x$에 대해 일정한 값에 접근하며($y \approx A$), 모든 $x$ 값에 대해 엄격하게 증가합니다. 그림 \@ref(fig:tank-capacity-model)은 이 방정식이 이전에 고려한 어떤 평활기보다 적어도 데이터에 잘 적합함을 보여줍니다(그림 \@ref(fig:tank-capacity-smoothers)).

(ref:tank-capacity-model) 명시적 분석 모델로 표시된 연료 탱크 데이터. 실선은 데이터에 대한 공식 $y = A - B \exp(-mx)$의 최소 제곱 적합에 해당합니다. 적합된 매개변수는 $A = 19.6$, $B = 29.2$, $m = 0.00015$입니다. 데이터 출처: 로빈 H. 록, 세인트로렌스 대학교

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/tank-capacity-model-1.png" alt="(ref:tank-capacity-model)" width="480" />
<p class="caption">(\#fig:tank-capacity-model)(ref:tank-capacity-model)</p>
</div>

여러 다른 상황에 적용할 수 있는 함수 형태는 단순한 직선 $y = A + mx$입니다. 두 변수 간의 거의 선형적인 관계는 실제 데이터 세트에서 놀라울 정도로 일반적입니다. 예를 들어 챕터 \@ref(visualizing-associations)에서는 파랑어치의 머리 길이와 체질량 간의 관계에 대해 논의했습니다. 이 관계는 암컷과 수컷 새 모두에게 거의 선형적이며 산점도의 점 위에 선형 추세선을 그리면 독자가 추세를 인식하는 데 도움이 됩니다(그림 \@ref(fig:blue-jays-scatter-line)).

(ref:blue-jays-scatter-line) 123마리 파랑어치의 머리 길이 대 체질량. 새의 성별은 색상으로 표시됩니다. 이 그림은 그림 \@ref(fig:blue-jays-scatter-sex)와 동일하지만 이제 개별 데이터 포인트 위에 선형 추세선을 그렸습니다. 데이터 출처: 키스 타빈, 오벌린 대학

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/blue-jays-scatter-line-1.png" alt="(ref:blue-jays-scatter-line)" width="480" />
<p class="caption">(\#fig:blue-jays-scatter-line)(ref:blue-jays-scatter-line)</p>
</div>

데이터가 비선형 관계를 보이는 경우 적절한 함수 형태가 무엇인지 추측해야 합니다. 이 경우 선형 관계가 나타나도록 축을 변환하여 추측의 정확성을 평가할 수 있습니다. 이 원리를 설명하기 위해 챕터 \@ref(visualizing-associations)에서 논의한 프리프린트 서버 bioRxiv에 대한 월별 제출 건수로 돌아가 보겠습니다. 각 달의 제출 건수 증가가 이전 달의 제출 건수에 비례하는 경우, 즉 매달 제출 건수가 고정된 백분율로 증가하는 경우 결과 곡선은 지수 함수입니다. 이 가정은 bioRxiv 데이터에 대해 충족되는 것으로 보이는데, 지수 형태의 곡선 $y = A\exp(mx)$가 bioRxiv 제출 데이터에 잘 적합하기 때문입니다(그림 \@ref(fig:biorxiv-expfit)).

(ref:biorxiv-expfit) 월별 프리프린트 서버 bioRxiv 제출 건수. 실선 파란색 선은 실제 월별 프리프린트 수를 나타내고 점선 검은색 선은 데이터에 대한 지수 적합 $y = 60\exp[0.77(x - 2014)]$를 나타냅니다. 데이터 출처: Jordan Anaya, http://www.prepubmed.org/

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/biorxiv-expfit-1.png" alt="(ref:biorxiv-expfit)" width="576" />
<p class="caption">(\#fig:biorxiv-expfit)(ref:biorxiv-expfit)</p>
</div>

원래 곡선이 지수 함수 $y = A\exp(mx)$이면 *y* 값의 로그 변환은 선형 관계 $\log(y) = \log(A) + mx$로 바뀝니다. 따라서 로그 변환된 *y* 값(또는 동등하게 로그 *y* 축)으로 데이터를 플로팅하고 선형 관계를 찾는 것은 데이터 세트가 지수적 성장을 보이는지 확인하는 좋은 방법입니다. bioRxiv 제출 건수의 경우 로그 *y* 축을 사용할 때 실제로 선형 관계를 얻습니다(그림 \@ref(fig:biorxiv-logscale)).

(ref:biorxiv-logscale) 로그 눈금으로 표시된 월별 프리프린트 서버 bioRxiv 제출 건수. 실선 파란색 선은 실제 월별 프리프린트 수를 나타내고 점선 검은색 선은 그림 \@ref(fig:biorxiv-expfit)의 지수 적합을 나타내며 실선 검은색 선은 로그 변환된 데이터에 대한 선형 적합을 나타내며 이는 $y = 43\exp[0.88(x - 2014)]$에 해당합니다. 데이터 출처: Jordan Anaya, http://www.prepubmed.org/

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/biorxiv-logscale-1.png" alt="(ref:biorxiv-logscale)" width="576" />
<p class="caption">(\#fig:biorxiv-logscale)(ref:biorxiv-logscale)</p>
</div>

그림 \@ref(fig:biorxiv-logscale)에서 실제 제출 건수 외에도 그림 \@ref(fig:biorxiv-expfit)의 지수 적합과 로그 변환된 데이터에 대한 선형 적합도 보여줍니다. 이 두 적합은 비슷하지만 동일하지는 않습니다. 특히 점선 기울기가 약간 벗어난 것처럼 보입니다. 선은 시계열의 절반 동안 개별 데이터 포인트 위에 체계적으로 위치합니다. 이것은 지수 적합의 일반적인 문제입니다. 데이터 포인트에서 적합된 곡선까지의 제곱 편차는 가장 작은 데이터 값보다 가장 큰 데이터 값에 대해 훨씬 크므로 가장 작은 데이터 값의 편차는 적합이 최소화하는 전체 제곱합에 거의 기여하지 않습니다. 결과적으로 적합된 선은 가장 작은 데이터 값을 체계적으로 초과하거나 미달합니다. 이러한 이유로 저는 일반적으로 지수 적합을 피하고 대신 로그 변환된 데이터에 대한 선형 적합을 사용하도록 권장합니다.

<div class="rmdtip">
<p>변환되지 않은 데이터에 비선형 곡선을 적합시키는 것보다 변환된 데이터에 직선을 적합시키는 것이 일반적으로 더 좋습니다.</p>
</div>

그림 \@ref(fig:biorxiv-logscale)과 같은 플롯은 *y* 축이 로그이고 *x* 축이 선형이므로 일반적으로 *로그-선형*이라고 합니다. 우리가 접할 수 있는 다른 플롯에는 *y* 축과 *x* 축이 모두 로그형인 *로그-로그* 또는 *y*가 선형이고 *x*가 로그형인 *선형-로그*가 있습니다. 로그-로그 플롯에서는 $y \sim x^\alpha$ 형태의 멱법칙이 직선으로 나타나고(예는 그림 \@ref(fig:word-counts-tail-log-log) 참조) 선형-로그 플롯에서는 $y \sim \log(x)$ 형태의 로그 관계가 직선으로 나타납니다. 다른 함수 형태는 더 특수한 좌표 변환으로 선형 관계로 바꿀 수 있지만 이러한 세 가지(로그-선형, 로그-로그, 선형-로그)는 광범위한 실제 응용 분야를 다룹니다.


## 추세 제거 및 시계열 분해

뚜렷한 장기 추세가 있는 모든 시계열의 경우 주목할 만한 편차를 구체적으로 강조하기 위해 이 추세를 제거하는 것이 유용할 수 있습니다. 이 기법을 *추세 제거*라고 하며 여기서는 주택 가격으로 시연하겠습니다. 미국에서는 모기지 대출 기관인 프레디 맥이 시간 경과에 따른 주택 가격 변화를 추적하는 월별 지수인 *프레디 맥 주택 가격 지수*를 발표합니다. 이 지수는 특정 지역의 전체 주택 시장 상태를 포착하려고 시도하므로 예를 들어 지수가 10% 증가하면 해당 시장의 평균 주택 가격이 10% 증가한 것으로 해석할 수 있습니다. 이 지수는 2000년 12월에 임의로 100으로 설정됩니다.

장기간에 걸쳐 주택 가격은 인플레이션과 거의 일치하는 일관된 연간 성장을 보이는 경향이 있습니다. 그러나 이러한 추세 위에 주택 거품이 겹쳐 심각한 호황과 불황 주기를 야기합니다. 그림 \@ref(fig:hpi-trends)는 4개 미국 주의 실제 주택 가격 지수와 장기 추세를 보여줍니다. 1980년에서 2017년 사이에 캘리포니아는 1990년과 2000년대 중반에 두 번의 거품을 겪었음을 알 수 있습니다. 같은 기간 동안 네바다는 2000년대 중반에 한 번의 거품만 경험했으며 텍사스와 웨스트버지니아의 주택 가격은 전체 기간 동안 장기 추세를 밀접하게 따랐습니다. 주택 가격은 백분율 증분, 즉 지수적으로 증가하는 경향이 있으므로 그림 \@ref(fig:hpi-trends)에서 로그 *y* 축을 선택했습니다. 직선은 캘리포니아의 경우 연간 4.7%의 가격 상승을 나타내고 네바다, 텍사스, 웨스트버지니아의 경우 각각 연간 2.8%의 가격 상승을 나타냅니다.

(ref:hpi-trends) 1980년부터 2017년까지 4개 주(캘리포니아, 네바다, 텍사스, 웨스트버지니아)의 프레디 맥 주택 가격 지수. 주택 가격 지수는 선택한 지리적 지역의 시간 경과에 따른 상대적 주택 가격을 추적하는 단위 없는 숫자입니다. 이 지수는 2000년 12월에 100과 같도록 임의로 조정됩니다. 파란색 선은 지수의 월별 변동을 보여주고 직선 회색 선은 해당 주의 장기 가격 추세를 보여줍니다. *y* 축은 로그 눈금이므로 직선 회색 선은 일관된 지수적 성장을 나타냅니다. 데이터 출처: 프레디 맥 주택 가격 지수

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/hpi-trends-1.png" alt="(ref:hpi-trends)" width="685.714285714286" />
<p class="caption">(\#fig:hpi-trends)(ref:hpi-trends)</p>
</div>

각 시점의 실제 가격 지수를 해당 장기 추세 값으로 나누어 주택 가격 추세를 제거합니다. 시각적으로 이 나눗셈은 그림 \@ref(fig:hpi-trends)에서 회색 선을 파란색 선에서 빼는 것처럼 보입니다. 변환되지 않은 값의 나눗셈은 로그 변환된 값의 뺄셈과 동일하기 때문입니다. 결과적인 추세 제거 주택 가격은 주택 거품을 더 명확하게 보여줍니다(그림 \@ref(fig:hpi-detrended)). 추세 제거는 시계열의 예상치 못한 움직임을 강조하기 때문입니다. 예를 들어 원래 시계열에서 1990년부터 약 1998년까지 캘리포니아의 주택 가격 하락은 완만해 보입니다(그림 \@ref(fig:hpi-trends)). 그러나 같은 기간 동안 장기 추세를 기준으로 가격이 상승할 것으로 예상했습니다. 예상 상승에 비해 가격 하락은 상당했으며 가장 낮은 지점에서 25%에 달했습니다(그림 \@ref(fig:hpi-detrended)).

(ref:hpi-detrended) 그림 \@ref(fig:hpi-trends)에 표시된 프레디 맥 주택 가격 지수의 추세 제거 버전. 추세 제거 지수는 실제 지수(그림 \@ref(fig:hpi-trends)의 파란색 선)를 장기 추세에 따른 예상 값(그림 \@ref(fig:hpi-trends)의 직선 회색 선)으로 나누어 계산했습니다. 이 시각화는 캘리포니아가 1990년경과 2000년대 중반에 두 번의 주택 거품을 경험했음을 보여주며, 이는 장기 추세에서 예상했던 것보다 실제 주택 가격이 급격히 상승했다가 하락한 것으로 식별할 수 있습니다. 마찬가지로 네바다는 2000년대 중반에 한 번의 주택 거품을 경험했으며 텍사스와 웨스트버지니아는 모두 거품을 거의 경험하지 않았습니다. 데이터 출처: 프레디 맥 주택 가격 지수

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/hpi-detrended-1.png" alt="(ref:hpi-detrended)" width="685.714285714286" />
<p class="caption">(\#fig:hpi-detrended)(ref:hpi-detrended)</p>
</div>

단순한 추세 제거 외에도 시계열을 여러 개의 뚜렷한 구성 요소로 분리하여 그 합이 원래 시계열을 복구하도록 할 수도 있습니다. 일반적으로 장기 추세 외에 시계열을 형성할 수 있는 세 가지 뚜렷한 구성 요소가 있습니다. 첫째, 작은 불규칙한 위아래 움직임을 유발하는 무작위 노이즈가 있습니다. 이 노이즈는 이 장에 표시된 모든 시계열에서 볼 수 있지만 아마도 그림 \@ref(fig:biorxiv-logscale)에서 가장 명확하게 볼 수 있습니다. 둘째, 그림 \@ref(fig:hpi-trends)에서 볼 수 있는 뚜렷한 주택 거품과 같이 시계열에 흔적을 남기는 고유한 외부 사건이 있을 수 있습니다. 셋째, 주기적인 변동이 있을 수 있습니다. 예를 들어 외부 온도는 일일 주기적인 변동을 보입니다. 가장 높은 온도는 이른 오후에 도달하고 가장 낮은 온도는 이른 아침에 도달합니다. 외부 온도는 또한 연간 주기적인 변동을 보입니다. 봄에 상승하여 여름에 최대치에 도달한 다음 가을에 하락하여 겨울에 최소치에 도달하는 경향이 있습니다(그림 \@ref(fig:temperature-normals-Houston)).

뚜렷한 시계열 구성 요소의 개념을 설명하기 위해 여기서는 시간 경과에 따른 CO<sub>2</sub> 농도 변화를 보여주는 킬링 곡선을 분해합니다(그림 \@ref(fig:keeling-curve)). CO<sub>2</sub>는 백만분율(ppm) 단위로 측정됩니다. 1960년대 325ppm 미만에서 21세기 두 번째 10년 400ppm 이상으로 선형보다 약간 빠른 장기적인 CO<sub>2</sub> 농도 증가를 볼 수 있습니다(그림 \@ref(fig:keeling-curve)). CO<sub>2</sub> 농도는 또한 연간 변동하며 전체 증가 위에 일관된 상승 및 하강 패턴을 따릅니다. 연간 변동은 북반구의 식물 성장에 의해 주도됩니다. 식물은 광합성 중에 CO<sub>2</sub>를 소비합니다. 지구 육지의 대부분이 북반구에 위치하고 식물 성장이 봄과 여름에 가장 활발하기 때문에 북반구의 여름철과 일치하는 대기 중 CO<sub>2</sub>의 연간 전 세계적 감소를 볼 수 있습니다.

(ref:keeling-curve) 킬링 곡선. 킬링 곡선은 시간 경과에 따른 대기 중 CO<sub>2</sub> 농도 변화를 보여줍니다. 1958년부터 하와이 마우나로아 관측소에서 CO<sub>2</sub> 농도를 지속적으로 모니터링했으며 처음에는 찰스 킬링의 지시에 따라 수행되었습니다. 여기에 표시된 것은 월평균 CO<sub>2</sub> 측정값이며 백만분율(ppm)로 표시됩니다. CO<sub>2</sub> 측정값은 계절에 따라 연간 변동하지만 장기적으로 일관된 증가 추세를 보입니다. 데이터 출처: Pieter Tans 박사, NOAA/ESRL 및 Ralph Keeling 박사, 스크립스 해양 연구소

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/keeling-curve-1.png" alt="(ref:keeling-curve)" width="576" />
<p class="caption">(\#fig:keeling-curve)(ref:keeling-curve)</p>
</div>

킬링 곡선을 장기 추세, 계절적 변동, 나머지로 분해할 수 있습니다(그림 \@ref(fig:keeling-curve-decomposition)). 여기서 사용하는 특정 방법은 STL(LOESS에 의한 시계열의 계절적 분해, @Cleveland_et_al_1990)이라고 하지만 유사한 목표를 달성하는 다른 많은 방법이 있습니다. 분해 결과 지난 30년 동안 CO<sub>2</sub> 농도가 50ppm 이상 증가했음을 보여줍니다. 이에 비해 계절적 변동은 8ppm 미만이며(장기 추세에 비해 4ppm 이상 증가하거나 감소하지 않음) 나머지는 1.6ppm 미만입니다(그림 \@ref(fig:keeling-curve-decomposition)). 나머지는 실제 측정값과 장기 추세 및 계절적 변동의 합계 간의 차이이며 여기서는 월별 CO<sub>2</sub> 측정값의 무작위 노이즈에 해당합니다. 그러나 더 일반적으로 나머지는 고유한 외부 사건을 포착할 수도 있습니다. 예를 들어 대규모 화산 폭발로 인해 상당한 양의 CO<sub>2</sub>가 방출되면 이러한 사건이 나머지의 갑작스러운 급증으로 나타날 수 있습니다. 그림 \@ref(fig:keeling-curve-decomposition)은 최근 수십 년 동안 이러한 고유한 외부 사건이 킬링 곡선에 큰 영향을 미치지 않았음을 보여줍니다.

(ref:keeling-curve-decomposition) 킬링 곡선의 시계열 분해, 월평균(그림 \@ref(fig:keeling-curve)에서와 같이), 장기 추세, 계절적 변동 및 나머지 표시. 나머지는 실제 측정값과 장기 추세 및 계절적 변동의 합계 간의 차이이며 무작위 노이즈를 나타냅니다. 연간 변동의 모양을 더 명확하게 보여주기 위해 최근 30년의 데이터를 확대했습니다. 데이터 출처: Pieter Tans 박사, NOAA/ESRL 및 Ralph Keeling 박사, 스크립스 해양 연구소

<div class="figure" style="text-align: center">
<img src="visualizing_trends_files/figure-html/keeling-curve-decomposition-1.png" alt="(ref:keeling-curve-decomposition)" width="685.714285714286" />
<p class="caption">(\#fig:keeling-curve-decomposition)(ref:keeling-curve-decomposition)</p>
</div>
