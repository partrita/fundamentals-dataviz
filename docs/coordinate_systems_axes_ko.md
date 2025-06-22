# 좌표계와 축 {#coordinate-systems-axes}

어떤 종류의 데이터 시각화를 만들든, 서로 다른 데이터 값이 그래픽의 어디에 위치하는지를 결정하는 위치 척도를 정의해야 합니다. 서로 다른 데이터 포인트를 서로 다른 위치에 배치하지 않고는 데이터를 시각화할 수 없습니다. 비록 선을 따라 서로 옆에 배열하는 것뿐이라도 말입니다. 일반적인 2차원 시각화의 경우 점을 고유하게 지정하려면 두 개의 숫자가 필요하므로 두 개의 위치 척도가 필요합니다. 이 두 척도는 일반적으로 플롯의 *x* 축과 *y* 축이지만 반드시 그런 것은 아닙니다. 또한 이러한 척도의 상대적인 기하학적 배열도 지정해야 합니다. 일반적으로 *x* 축은 수평으로, *y* 축은 수직으로 실행되지만 다른 배열을 선택할 수도 있습니다. 예를 들어 *y* 축이 *x* 축에 대해 예각으로 실행되도록 하거나 한 축이 원으로 실행되고 다른 축이 방사형으로 실행되도록 할 수 있습니다. 위치 척도 집합과 상대적인 기하학적 배열의 조합을 *좌표계*라고 합니다.


## 데카르트 좌표

데이터 시각화에 가장 널리 사용되는 좌표계는 2차원 *데카르트 좌표계*로, 각 위치는 *x*와 *y* 값으로 고유하게 지정됩니다. *x* 축과 *y* 축은 서로 직교하며 데이터 값은 두 축을 따라 균일한 간격으로 배치됩니다(그림 \@ref(fig:cartesian-coord)). 두 축은 연속적인 위치 척도이며 양수와 음수 실수를 모두 나타낼 수 있습니다. 좌표계를 완전히 지정하려면 각 축이 포함하는 숫자 범위를 지정해야 합니다. 그림 \@ref(fig:cartesian-coord)에서 *x* 축은 -2.2에서 3.2까지, *y* 축은 -2.2에서 2.2까지 실행됩니다. 이러한 축 한계 내의 모든 데이터 값은 플롯의 해당 위치에 배치됩니다. 축 한계를 벗어나는 모든 데이터 값은 삭제됩니다.

(ref:cartesian-coord) 표준 데카르트 좌표계. 수평 축은 관례적으로 *x*라고 하고 수직 축은 *y*라고 합니다. 두 축은 등간격 격자를 형성합니다. 여기서 *x*와 *y* 격자선은 모두 1단위로 구분됩니다. 점 (2, 1)은 원점 (0, 0)에서 오른쪽으로 *x* 단위 2개, 위로 *y* 단위 1개만큼 떨어져 있습니다. 점 (-1, -1)은 원점에서 왼쪽으로 *x* 단위 1개, 아래로 *y* 단위 1개만큼 떨어져 있습니다.

<div class="figure" style="text-align: center">
<img src="coordinate_systems_axes_files/figure-html/cartesian-coord-1.png" alt="(ref:cartesian-coord)" width="576" />
<p class="caption">(\#fig:cartesian-coord)(ref:cartesian-coord)</p>
</div>

그러나 데이터 값은 단순한 숫자가 아닙니다. 단위가 있습니다. 예를 들어 온도를 측정하는 경우 값은 섭씨 또는 화씨로 측정될 수 있습니다. 마찬가지로 거리를 측정하는 경우 값은 킬로미터 또는 마일로 측정될 수 있으며 기간을 측정하는 경우 값은 분, 시간 또는 일로 측정될 수 있습니다. 데카르트 좌표계에서 축을 따른 격자선 사이의 간격은 이러한 데이터 단위의 이산적인 단계에 해당합니다. 예를 들어 온도 척도에서는 화씨 10도마다 격자선이 있을 수 있고 거리 척도에서는 5킬로미터마다 격자선이 있을 수 있습니다.

데카르트 좌표계는 두 가지 다른 단위를 나타내는 두 개의 축을 가질 수 있습니다. 이 상황은 두 가지 다른 유형의 변수를 *x*와 *y*에 매핑할 때마다 매우 일반적으로 발생합니다. 예를 들어 그림 \@ref(fig:temp-normals-vs-time)에서는 연중 날짜에 대한 온도를 플로팅했습니다. 그림 \@ref(fig:temp-normals-vs-time)의 *y* 축은 화씨로 측정되며 20도마다 격자선이 있고 *x* 축은 월 단위로 측정되며 매 3개월의 첫날에 격자선이 있습니다. 두 축이 다른 단위로 측정될 때마다 하나를 다른 하나에 대해 늘리거나 압축하고 데이터의 유효한 시각화를 유지할 수 있습니다(그림 \@ref(fig:temperature-normals-Houston)). 어떤 버전이 더 바람직한지는 전달하려는 스토리에 따라 달라질 수 있습니다. 높고 좁은 그림은 *y* 축을 따른 변화를 강조하고 짧고 넓은 그림은 그 반대입니다. 이상적으로는 위치의 중요한 차이가 눈에 띄도록 하는 가로 세로 비율을 선택하는 것이 좋습니다.

(ref:temperature-normals-Houston) 텍사스 주 휴스턴의 일일 기온 정상값. 온도는 *y* 축에, 연중 날짜는 *x* 축에 매핑됩니다. (a), (b), (c) 부분은 동일한 그림을 다른 가로 세로 비율로 보여줍니다. 세 부분 모두 온도 데이터의 유효한 시각화입니다. 데이터 출처: NOAA.

<div class="figure" style="text-align: center">
<img src="coordinate_systems_axes_files/figure-html/temperature-normals-Houston-1.png" alt="(ref:temperature-normals-Houston)" width="685.714285714286" />
<p class="caption">(\#fig:temperature-normals-Houston)(ref:temperature-normals-Houston)</p>
</div>

반면에 *x* 축과 *y* 축이 동일한 단위로 측정되는 경우 두 축의 격자 간격은 동일해야 하므로 *x* 축 또는 *y* 축을 따른 동일한 거리가 동일한 수의 데이터 단위에 해당합니다. 예를 들어 연중 매일 텍사스 주 휴스턴의 기온을 캘리포니아 주 샌디에이고의 기온과 비교하여 플로팅할 수 있습니다(그림 \@ref(fig:temperature-normals-Houston-San-Diego)a). 두 축을 따라 동일한 양이 플로팅되므로 그림 \@ref(fig:temperature-normals-Houston-San-Diego)의 경우처럼 격자선이 완벽한 정사각형을 형성하도록 해야 합니다.

(ref:temperature-normals-Houston-San-Diego) 텍사스 주 휴스턴의 일일 기온 정상값을 캘리포니아 주 샌디에이고의 해당 기온 정상값과 비교하여 플로팅했습니다. 1월, 4월, 7월, 10월의 첫날은 시간적 참조를 제공하기 위해 강조 표시되었습니다. (a) 기온은 화씨로 표시됩니다. (b) 기온은 섭씨로 표시됩니다. 데이터 출처: NOAA.

<div class="figure" style="text-align: center">
<img src="coordinate_systems_axes_files/figure-html/temperature-normals-Houston-San-Diego-1.png" alt="(ref:temperature-normals-Houston-San-Diego)" width="754.285714285714" />
<p class="caption">(\#fig:temperature-normals-Houston-San-Diego)(ref:temperature-normals-Houston-San-Diego)</p>
</div>

데이터 단위를 변경하면 어떻게 되는지 궁금할 수 있습니다. 결국 단위는 임의적이며 귀하의 선호도는 다른 사람의 선호도와 다를 수 있습니다. 단위 변경은 선형 변환으로, 모든 데이터 값에 숫자를 더하거나 빼거나 모든 데이터 값에 다른 숫자를 곱합니다. 다행히 데카르트 좌표계는 이러한 선형 변환에 대해 불변입니다. 따라서 데이터 단위를 변경하고 축을 그에 따라 변경하면 결과 그림은 변경되지 않습니다. 예를 들어 그림 \@ref(fig:temperature-normals-Houston-San-Diego)a와 \@ref(fig:temperature-normals-Houston-San-Diego)b를 비교해 보십시오. 둘 다 동일한 데이터를 보여주지만 (a) 부분에서는 온도 단위가 화씨이고 (b) 부분에서는 섭씨입니다. 격자선이 다른 위치에 있고 축을 따른 숫자가 다르더라도 두 데이터 시각화는 정확히 동일하게 보입니다.


## 비선형 축

데카르트 좌표계에서 축을 따른 격자선은 데이터 단위와 결과 시각화 모두에서 균일하게 간격을 둡니다. 이러한 좌표계의 위치 척도를 *선형*이라고 합니다. 선형 척도는 일반적으로 데이터의 정확한 표현을 제공하지만 비선형 척도가 선호되는 시나리오가 있습니다. 비선형 척도에서는 데이터 단위의 균일한 간격이 시각화에서 불균일한 간격에 해당하거나 반대로 시각화의 균일한 간격이 데이터 단위의 불균일한 간격에 해당합니다.

가장 일반적으로 사용되는 비선형 척도는 *로그 척도* 또는 줄여서 *로그 척도*입니다. 로그 척도는 곱셈에 대해 선형이므로 척도의 단위 단계는 고정된 값과의 곱셈에 해당합니다. 로그 척도를 만들려면 데이터 값을 로그 변환하고 축 격자선을 따라 표시되는 숫자를 지수화해야 합니다. 이 과정은 그림 \@ref(fig:linear-log-scales)에 설명되어 있으며, 선형 및 로그 척도에 배치된 숫자 1, 3.16, 10, 31.6, 100을 보여줍니다. 숫자 3.16과 31.6은 이상한 선택처럼 보일 수 있지만 로그 척도에서 1과 10 사이, 10과 100 사이의 정확히 절반이기 때문에 선택되었습니다. $10^{0.5} = \sqrt{10} \approx 3.16$이고 동등하게 $3.16 \times 3.16 \approx 10$임을 관찰하여 이를 알 수 있습니다. 마찬가지로 $10^{1.5} = 10\times10^{0.5} \approx 31.6$입니다.

(ref:linear-log-scales) 선형 척도와 로그 척도의 관계. 점은 데이터 값 1, 3.16, 10, 31.6, 100에 해당하며 로그 척도에서 등간격으로 배치된 숫자입니다. 이러한 데이터 포인트를 선형 척도에 표시하거나 로그 변환한 다음 선형 척도에 표시하거나 로그 척도에 표시할 수 있습니다. 중요하게도 로그 척도의 올바른 축 제목은 표시된 변수의 이름이지 해당 변수의 로그가 아닙니다.

<div class="figure" style="text-align: center">
<img src="coordinate_systems_axes_files/figure-html/linear-log-scales-1.png" alt="(ref:linear-log-scales)" width="576" />
<p class="caption">(\#fig:linear-log-scales)(ref:linear-log-scales)</p>
</div>

수학적으로 로그 변환된 데이터를 선형 척도에 플로팅하는 것과 원래 데이터를 로그 척도에 플로팅하는 것 사이에는 차이가 없습니다(그림 \@ref(fig:linear-log-scales)). 유일한 차이점은 개별 축 눈금과 축 전체에 대한 레이블링에 있습니다. 대부분의 경우 로그 척도에 대한 레이블링이 더 바람직한데, 이는 축 눈금 레이블로 표시된 숫자를 해석하는 데 독자의 정신적 부담을 덜어주기 때문입니다. 또한 로그의 밑에 대한 혼동의 위험도 적습니다. 로그 변환된 데이터로 작업할 때 데이터가 자연 로그를 사용하여 변환되었는지 아니면 밑이 10인 로그를 사용하여 변환되었는지 혼동될 수 있습니다. 그리고 레이블링이 모호한 경우도 드물지 않습니다(예: 밑을 전혀 지정하지 않는 "log(x)"). 로그 변환된 데이터로 작업할 때는 항상 밑을 확인하는 것이 좋습니다. 로그 변환된 데이터를 플로팅할 때는 항상 축 레이블링에 밑을 지정하십시오.

로그 척도에서의 곱셈은 선형 척도에서의 덧셈처럼 보이므로 로그 척도는 곱셈이나 나눗셈으로 얻은 모든 데이터에 대한 자연스러운 선택입니다. 특히 비율은 일반적으로 로그 척도에 표시해야 합니다. 예를 들어 텍사스의 각 카운티 주민 수를 가져와 모든 텍사스 카운티의 중간 주민 수로 나누었습니다. 결과 비율은 1보다 크거나 작을 수 있는 숫자입니다. 정확히 1의 비율은 해당 카운티가 중간 주민 수를 가지고 있음을 의미합니다. 이러한 비율을 로그 척도에 시각화하면 텍사스 카운티의 인구 수가 중간값을 중심으로 대칭적으로 분포되어 있으며 가장 인구가 많은 카운티는 중간값보다 100배 이상 많은 주민을 가지고 있고 가장 인구가 적은 카운티는 중간값보다 100배 이상 적은 주민을 가지고 있음을 명확하게 알 수 있습니다(그림 \@ref(fig:texas-counties-pop-ratio-log)). 반대로 동일한 데이터의 경우 선형 척도는 중간 인구 수의 카운티와 중간보다 훨씬 적은 인구 수의 카운티 간의 차이를 모호하게 만듭니다(그림 \@ref(fig:texas-counties-pop-ratio-lin)).

(ref:texas-counties-pop-ratio-log) 텍사스 카운티의 인구 수를 중간값과 비교합니다. 선택한 카운티는 이름으로 강조 표시됩니다. 점선은 비율 1을 나타내며 중간 인구 수의 카운티에 해당합니다. 가장 인구가 많은 카운티는 중간 카운티보다 약 100배 많은 주민을 가지고 있으며 가장 인구가 적은 카운티는 중간 카운티보다 약 100배 적은 주민을 가지고 있습니다. 데이터 출처: 2010년 미국 인구 조사.

<div class="figure" style="text-align: center">
<img src="coordinate_systems_axes_files/figure-html/texas-counties-pop-ratio-log-1.png" alt="(ref:texas-counties-pop-ratio-log)" width="685.714285714286" />
<p class="caption">(\#fig:texas-counties-pop-ratio-log)(ref:texas-counties-pop-ratio-log)</p>
</div>

(ref:texas-counties-pop-ratio-lin) 텍사스 카운티의 인구 크기를 중간값과 비교합니다. 비율을 선형 척도에 표시함으로써 비율 > 1을 과도하게 강조하고 비율 < 1을 모호하게 만들었습니다. 일반적으로 비율은 선형 척도에 표시해서는 안 됩니다. 데이터 출처: 2010년 미국 인구 조사.

<div class="figure" style="text-align: center">
<img src="coordinate_systems_axes_files/figure-html/texas-counties-pop-ratio-lin-1.png" alt="(ref:texas-counties-pop-ratio-lin)" width="685.714285714286" />
<p class="caption">(\#fig:texas-counties-pop-ratio-lin)(ref:texas-counties-pop-ratio-lin)</p>
</div>

로그 척도에서 값 1은 선형 척도의 값 0과 유사한 자연스러운 중간점입니다. 1보다 큰 값은 곱셈을 나타내고 1보다 작은 값은 나눗셈을 나타낸다고 생각할 수 있습니다. 예를 들어 $10 = 1\times 10$ 및 $0.1 = 1/10$으로 쓸 수 있습니다. 반면에 값 0은 로그 척도에 나타날 수 없습니다. 1에서 무한히 멀리 떨어져 있습니다. 이를 확인하는 한 가지 방법은 $\log(0) = -\infty$임을 고려하는 것입니다. 또는 1에서 0으로 가려면 유한한 값으로 무한 번 나누거나(예: $1/10/10/10/10/10/10\dots = 0$) 무한대로 한 번 나누어야 합니다(즉, $1/\infty = 0$).

로그 척도는 데이터 세트에 매우 다른 크기의 숫자가 포함된 경우 자주 사용됩니다. 그림 \@ref(fig:texas-counties-pop-ratio-log) 및 \@ref(fig:texas-counties-pop-ratio-lin)에 표시된 텍사스 카운티의 경우 가장 인구가 많은 카운티(해리스)는 2010년 미국 인구 조사에서 4,092,459명의 주민이 있었고 가장 인구가 적은 카운티(러빙)는 82명이었습니다. 따라서 인구 수를 중간값으로 나누어 비율로 만들지 않았더라도 로그 척도가 적절했을 것입니다. 그러나 주민이 0명인 카운티가 있다면 어떻게 해야 할까요? 이 카운티는 음의 무한대에 위치하므로 로그 척도에 표시할 수 없습니다. 이 상황에서는 때때로 로그 변환 대신 제곱근 변환을 사용하는 제곱근 척도를 사용하는 것이 권장됩니다(그림 \@ref(fig:sqrt-scales)). 로그 척도와 마찬가지로 제곱근 척도는 더 큰 숫자를 더 작은 범위로 압축하지만 로그 척도와 달리 0의 존재를 허용합니다.

(ref:sqrt-scales) 선형 척도와 제곱근 척도의 관계. 점은 데이터 값 0, 1, 4, 9, 16, 25, 36, 49에 해당하며, 이는 0에서 7까지의 정수의 제곱이므로 제곱근 척도에서 등간격으로 배치된 숫자입니다. 이러한 데이터 포인트를 선형 척도에 표시하거나 제곱근 변환한 다음 선형 척도에 표시하거나 제곱근 척도에 표시할 수 있습니다.

<div class="figure" style="text-align: center">
<img src="coordinate_systems_axes_files/figure-html/sqrt-scales-1.png" alt="(ref:sqrt-scales)" width="576" />
<p class="caption">(\#fig:sqrt-scales)(ref:sqrt-scales)</p>
</div>

제곱근 척도에는 두 가지 문제가 있습니다. 첫째, 선형 척도에서 단위 단계는 상수 값의 덧셈 또는 뺄셈에 해당하고 로그 척도에서는 상수 값과의 곱셈 또는 나눗셈에 해당하지만 제곱근 척도에는 이러한 규칙이 없습니다. 제곱근 척도에서 단위 단계의 의미는 시작하는 척도 값에 따라 달라집니다. 둘째, 제곱근 척도에 축 눈금을 가장 잘 배치하는 방법이 불분명합니다. 등간격 눈금을 얻으려면 제곱에 배치해야 하지만 예를 들어 0, 4, 25, 49, 81(두 번째 제곱마다) 위치의 축 눈금은 매우 직관적이지 않을 것입니다. 또는 선형 간격(10, 20, 30 등)에 배치할 수 있지만 이렇게 하면 척도의 낮은 쪽 끝에 축 눈금이 너무 적거나 높은 쪽 끝에 너무 많아집니다. 그림 \@ref(fig:sqrt-scales)에서는 제곱근 척도에서 0, 1, 5, 10, 20, 30, 40, 50 위치에 축 눈금을 배치했습니다. 이러한 값은 임의적이지만 데이터 범위에 대한 합리적인 범위를 제공합니다.

제곱근 척도의 이러한 문제에도 불구하고 유효한 위치 척도이며 적절한 응용 프로그램이 있을 가능성을 배제하지 않습니다. 예를 들어 로그 척도가 비율에 대한 자연스러운 척도인 것처럼 제곱근 척도는 제곱으로 나타나는 데이터에 대한 자연스러운 척도라고 주장할 수 있습니다. 데이터가 자연스럽게 제곱인 한 가지 시나리오는 지리적 지역의 맥락입니다. 지리적 지역의 면적을 제곱근 척도에 표시하면 동서 또는 남북으로 지역의 선형 범위를 강조 표시합니다. 예를 들어 지역을 가로질러 운전하는 데 시간이 얼마나 걸릴지 궁금하다면 이러한 범위가 관련될 수 있습니다. 그림 \@ref(fig:northeast-state-areas)는 미국 북동부 주의 면적을 선형 척도와 제곱근 척도 모두에 표시합니다. 이러한 주의 면적은 상당히 다르지만(그림 \@ref(fig:northeast-state-areas)a), 각 주를 가로질러 운전하는 데 걸리는 시간은 선형 척도의 그림(그림 \@ref(fig:northeast-state-areas)a)보다 제곱근 척도의 그림(그림 \@ref(fig:northeast-state-areas)b)과 더 유사합니다.

(ref:northeast-state-areas) 미국 북동부 주의 면적. (a) 선형 척도에 표시된 면적. (b) 제곱근 척도에 표시된 면적. 데이터 출처: Google.

<div class="figure" style="text-align: center">
<img src="coordinate_systems_axes_files/figure-html/northeast-state-areas-1.png" alt="(ref:northeast-state-areas)" width="754.285714285714" />
<p class="caption">(\#fig:northeast-state-areas)(ref:northeast-state-areas)</p>
</div>

## 곡선 축이 있는 좌표계

지금까지 살펴본 모든 좌표계는 축 자체가 데이터 값에서 위치로의 비선형 매핑을 설정하더라도 서로 직각으로 배치된 두 개의 직선 축을 사용했습니다. 그러나 축 자체가 곡선인 다른 좌표계도 있습니다. 특히 *극좌표* 좌표계에서는 각도와 원점에서의 방사형 거리를 통해 위치를 지정하므로 각도 축은 원형입니다(그림 \@ref(fig:polar-coord)).

(ref:polar-coord) 데카르트 좌표와 극좌표의 관계. (a) 데카르트 좌표계에 표시된 세 개의 데이터 포인트. (b) 동일한 세 개의 데이터 포인트를 극좌표계에 표시했습니다. (a) 부분의 *x* 좌표를 각도 좌표로 사용하고 (a) 부분의 *y* 좌표를 방사형 좌표로 사용했습니다. 이 예에서 원형 축은 0에서 4까지 실행되므로 이 좌표계에서 *x* = 0과 *x* = 4는 동일한 위치입니다.

<div class="figure" style="text-align: center">
<img src="coordinate_systems_axes_files/figure-html/polar-coord-1.png" alt="(ref:polar-coord)" width="685.714285714286" />
<p class="caption">(\#fig:polar-coord)(ref:polar-coord)</p>
</div>

극좌표는 주기적인 특성을 가진 데이터에 유용할 수 있으므로 척도의 한쪽 끝에 있는 데이터 값을 다른 쪽 끝에 있는 데이터 값과 논리적으로 연결할 수 있습니다. 예를 들어 1년의 날짜를 생각해 보십시오. 12월 31일은 연도의 마지막 날이지만 연도의 첫날 하루 전이기도 합니다. 연중 어떤 양이 어떻게 변하는지 보여주고 싶다면 각 날짜를 지정하는 각도 좌표가 있는 극좌표를 사용하는 것이 적절할 수 있습니다. 이 개념을 그림 \@ref(fig:temp-normals-vs-time)의 온도 정상값에 적용해 보겠습니다. 온도 정상값은 특정 연도에 얽매이지 않는 평균 온도이므로 12월 31일은 1월 1일보다 366일 늦은 것으로 생각할 수 있으며(온도 정상값에는 2월 29일이 포함됨) 하루 빠른 것으로도 생각할 수 있습니다. 극좌표계에 온도 정상값을 플로팅하면 이러한 주기적 속성을 강조 표시합니다(그림 \@ref(fig:temperature-normals-polar)). 그림 \@ref(fig:temp-normals-vs-time)과 비교하여 극좌표 버전은 늦가을부터 초봄까지 데스밸리, 휴스턴, 샌디에이고의 온도가 얼마나 유사한지 강조 표시합니다. 데카르트 좌표계에서는 12월 말과 1월 초의 온도 값이 그림의 반대 부분에 표시되므로 단일 시각적 단위를 형성하지 않아 이 사실이 모호해집니다.

(ref:temperature-normals-polar) 미국 내 선택된 4개 지역의 일일 기온 정상값을 극좌표로 표시했습니다. 중심점에서 방사형 거리는 화씨로 일일 기온을 나타내며, 연중 날짜는 1월 1일을 6시 위치에서 시작하여 시계 반대 방향으로 배열됩니다.

<div class="figure" style="text-align: center">
<img src="coordinate_systems_axes_files/figure-html/temperature-normals-polar-1.png" alt="(ref:temperature-normals-polar)" width="576" />
<p class="caption">(\#fig:temperature-normals-polar)(ref:temperature-normals-polar)</p>
</div>


곡선 축을 접하는 두 번째 상황은 지리 공간 데이터, 즉 지도의 맥락입니다. 지구상의 위치는 경도와 위도로 지정됩니다. 그러나 지구는 구형이므로 위도와 경도를 데카르트 축으로 그리는 것은 오해의 소지가 있으며 권장되지 않습니다(그림 \@ref(fig:worldmap-four-projections)). 대신 인공물을 최소화하고 지구상의 실제 모양 선에 비해 면적이나 각도를 보존하는 것 사이에서 다양한 균형을 이루는 다양한 유형의 비선형 투영을 사용합니다(그림 \@ref(fig:worldmap-four-projections)).

(ref:worldmap-four-projections) 4가지 다른 투영법으로 표시된 세계 지도. 데카르트 경도 및 위도 시스템은 각 위치의 경도와 위도를 일반적인 데카르트 좌표계에 매핑합니다. 이 매핑은 3D 지구상의 실제 값에 비해 면적과 각도 모두에서 상당한 왜곡을 유발합니다. 중단된 구드 호몰로사인 투영법은 실제 표면적을 완벽하게 나타내지만 그린란드와 남극 대륙과 같은 일부 육지를 별도의 조각으로 나누는 단점이 있습니다. 로빈슨 투영법과 빈켈 트리펠 투영법은 모두 각도 왜곡과 면적 왜곡 사이의 균형을 이루며 전 세계 지도에 일반적으로 사용됩니다.

<div class="figure" style="text-align: center">
<img src="coordinate_systems_axes_files/figure-html/worldmap-four-projections-1.png" alt="(ref:worldmap-four-projections)" width="754.285714285714" />
<p class="caption">(\#fig:worldmap-four-projections)(ref:worldmap-four-projections)</p>
</div>
