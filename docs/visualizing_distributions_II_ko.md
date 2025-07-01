# 분포 시각화: 경험적 누적 분포 함수 및 q-q 그림 {#ecdf-qq}

챕터 \@ref(histograms-density-plots)에서는 히스토그램이나 밀도 그림으로 분포를 시각화하는 방법을 설명했습니다. 이러한 접근 방식은 모두 매우 직관적이고 시각적으로 매력적입니다. 그러나 해당 장에서 논의했듯이 둘 다 결과 그림이 사용자가 선택해야 하는 매개변수(예: 히스토그램의 구간 너비 및 밀도 그림의 대역폭)에 따라 크게 달라진다는 한계를 공유합니다. 결과적으로 둘 다 데이터 자체의 직접적인 시각화라기보다는 데이터의 해석으로 간주해야 합니다.

히스토그램이나 밀도 그림을 사용하는 대신 모든 데이터 포인트를 점 구름으로 개별적으로 표시할 수도 있습니다. 그러나 이 접근 방식은 매우 큰 데이터 세트의 경우 다루기 어려워지며 어쨌든 개별 데이터 포인트보다는 분포의 속성을 강조하는 집계 방법이 유용합니다. 이 문제를 해결하기 위해 통계학자들은 경험적 누적 분포 함수(ecdf)와 분위수-분위수(q-q) 그림을 발명했습니다. 이러한 유형의 시각화에는 임의의 매개변수 선택이 필요하지 않으며 모든 데이터를 한 번에 보여줍니다. 불행히도 히스토그램이나 밀도 그림보다 직관적이지 않으며 매우 기술적인 출판물 외부에서는 자주 사용되는 것을 보지 못했습니다. 그러나 통계학자들 사이에서는 매우 인기가 있으며 데이터 시각화에 관심 있는 사람이라면 누구나 이러한 기술에 익숙해야 한다고 생각합니다.


## 경험적 누적 분포 함수

누적 경험적 분포 함수를 설명하기 위해 제가 교실에서 교수로 많이 다루는 것과 밀접하게 모델링된 가상적인 예부터 시작하겠습니다. 학생 성적 데이터 세트입니다. 가상 수업에 50명의 학생이 있고 학생들이 방금 0점에서 100점까지 점수를 받을 수 있는 시험을 마쳤다고 가정해 보겠습니다. 예를 들어 적절한 학점 경계를 결정하기 위해 수업 성과를 가장 잘 시각화하려면 어떻게 해야 할까요?

특정 점수 이하를 받은 총 학생 수를 모든 가능한 점수와 비교하여 플로팅할 수 있습니다. 이 플롯은 0점에서 0으로 시작하여 100점에서 50으로 끝나는 오름차순 함수가 됩니다. 이 시각화에 대한 다른 생각 방식은 다음과 같습니다. 모든 학생을 얻은 점수 순으로 오름차순으로 순위를 매긴 다음(가장 낮은 점수를 받은 학생이 가장 낮은 순위를 받고 가장 높은 점수를 받은 학생이 가장 높은 순위를 받음) 실제 얻은 점수와 순위를 플로팅합니다. 결과는 *경험적 누적 분포 함수*(ecdf) 또는 간단히 *누적 분포*입니다. 각 점은 한 명의 학생을 나타내며 선은 가능한 모든 점수 값에 대해 관찰된 가장 높은 학생 순위를 시각화합니다(그림 \@ref(fig:student-grades)).

(ref:student-grades) 50명의 가상 수업 학생 성적의 경험적 누적 분포 함수.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_II_files/figure-html/student-grades-1.png" alt="(ref:student-grades)" width="576" />
<p class="caption">(\#fig:student-grades)(ref:student-grades)</p>
</div>


학생들을 반대 순서, 즉 내림차순으로 순위를 매기면 어떻게 되는지 궁금할 수 있습니다. 이 순위는 단순히 함수를 뒤집습니다. 결과는 여전히 경험적 누적 분포 함수이지만 이제 선은 가능한 모든 점수 값에 대해 관찰된 가장 낮은 학생 순위를 나타냅니다(그림 \@ref(fig:student-grades-desc)).

(ref:student-grades-desc) 내림차순 ecdf로 표시된 학생 성적 분포.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_II_files/figure-html/student-grades-desc-1.png" alt="(ref:student-grades-desc)" width="576" />
<p class="caption">(\#fig:student-grades-desc)(ref:student-grades-desc)</p>
</div>

오름차순 누적 분포 함수는 내림차순 함수보다 더 널리 알려져 있고 더 일반적으로 사용되지만 둘 다 중요한 응용 분야가 있습니다. 내림차순 누적 분포 함수는 매우 치우친 분포를 시각화하려는 경우에 중요합니다(섹션 \@ref(skewed-distributions) 참조).

실제 응용 프로그램에서는 개별 점을 강조 표시하지 않고 ecdf를 그리고 순위를 최대 순위로 정규화하여 *y* 축이 누적 빈도를 나타내도록 하는 것이 매우 일반적입니다(그림 \@ref(fig:student-grades-normalized)).

(ref:student-grades-normalized) 학생 성적의 Ecdf. 학생 순위는 총 학생 수로 정규화되어 플로팅된 *y* 값이 해당 점수 이하를 받은 학급 학생의 비율에 해당합니다.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_II_files/figure-html/student-grades-normalized-1.png" alt="(ref:student-grades-normalized)" width="576" />
<p class="caption">(\#fig:student-grades-normalized)(ref:student-grades-normalized)</p>
</div>

이 플롯에서 학생 성적 분포의 주요 속성을 직접 읽을 수 있습니다. 예를 들어 약 4분의 1(25%)의 학생이 75점 미만을 받았습니다. 중간 점수 값(누적 빈도 0.5에 해당)은 81점입니다. 약 20%의 학생이 90점 이상을 받았습니다.

저는 ecdf가 학생 불만을 최소화하는 정확한 기준점을 찾는 데 도움이 되기 때문에 학점 경계를 지정하는 데 유용하다고 생각합니다. 예를 들어 이 예에서는 80점 바로 아래에 상당히 긴 수평선이 있고 80점에서 가파른 상승이 이어집니다. 이 특징은 3명의 학생이 시험에서 80점을 받았고 다음으로 성적이 낮은 학생은 76점만 받았기 때문에 발생합니다. 이 시나리오에서는 80점 이상을 받은 모든 학생에게 B를 주고 79점 이하를 받은 모든 학생에게 C를 주기로 결정할 수 있습니다. 80점을 받은 3명의 학생은 간신히 B를 받아 기뻐하고 76점을 받은 학생은 C를 받지 않으려면 훨씬 더 잘해야 한다는 것을 깨닫습니다. 기준점을 77점으로 설정했다면 문자 등급 분포는 정확히 동일했겠지만 76점을 받은 학생이 성적을 올리기 위해 제 사무실을 방문했을 수 있습니다. 마찬가지로 기준점을 81점으로 설정했다면 3명의 학생이 성적을 협상하기 위해 제 사무실을 방문했을 것입니다.

## 매우 치우친 분포 {#skewed-distributions}

많은 경험적 데이터 세트는 특히 오른쪽으로 긴 꼬리를 가진 매우 치우친 분포를 보이며 이러한 분포는 시각화하기 어려울 수 있습니다. 이러한 분포의 예로는 여러 도시 또는 카운티에 거주하는 사람들의 수, 소셜 네트워크의 연락처 수, 책에 개별 단어가 나타나는 빈도, 여러 저자가 작성한 학술 논문의 수, 개인의 순자산, 단백질-단백질 상호 작용 네트워크에서 개별 단백질의 상호 작용 파트너 수 등이 있습니다[@Clauset-et-al-2009]. 이러한 모든 분포는 오른쪽 꼬리가 지수 함수보다 느리게 감소한다는 공통점을 가지고 있습니다. 실제로 이것은 분포의 평균이 작더라도 매우 큰 값이 그렇게 드물지 않다는 것을 의미합니다. 이러한 분포의 중요한 부류는 *멱법칙* 분포이며, 여기서 어떤 기준점보다 *x*배 큰 값을 관찰할 가능성은 *x*의 거듭제곱으로 감소합니다. 구체적인 예를 들면 미국의 순자산을 생각해 보십시오. 이는 지수 2의 멱법칙에 따라 분포합니다. 특정 순자산 수준(예: 100만 달러)에서 해당 순자산의 절반을 가진 사람은 4배 더 많고 해당 순자산의 두 배를 가진 사람은 4분의 1만큼 많습니다. 중요하게도 기준점으로 1만 달러를 사용하거나 1억 달러를 사용하더라도 동일한 관계가 성립합니다. 이러한 이유로 멱법칙 분포는 *규모 없는* 분포라고도 합니다.

여기서는 먼저 2010년 미국 인구 조사에 따른 여러 미국 카운티에 거주하는 사람들의 수를 논의하겠습니다. 이 분포는 오른쪽으로 매우 긴 꼬리를 가지고 있습니다. 대부분의 카운티에는 비교적 적은 수의 주민이 있지만(중앙값은 25,857명), 몇몇 카운티에는 매우 많은 수의 주민이 있습니다(예: 로스앤젤레스 카운티, 9,818,605명). 인구 수 분포를 밀도 그림이나 ecdf로 시각화하려고 하면 본질적으로 쓸모없는 그림이 됩니다(그림 \@ref(fig:county-populations)).

(ref:county-populations) 2010년 미국 인구 조사에 따른 미국 카운티의 주민 수 분포. (a) 밀도 그림. (b) 경험적 누적 분포 함수.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_II_files/figure-html/county-populations-1.png" alt="(ref:county-populations)" width="480" />
<p class="caption">(\#fig:county-populations)(ref:county-populations)</p>
</div>

밀도 그림(그림 \@ref(fig:county-populations)a)은 0 바로 근처에 날카로운 정점을 보이며 분포의 세부 정보는 거의 보이지 않습니다. 마찬가지로 ecdf(그림 \@ref(fig:county-populations)b)는 0 근처에서 급격한 상승을 보이며 분포의 세부 정보는 다시 거의 보이지 않습니다. 이 특정 데이터 세트의 경우 데이터를 로그 변환하고 로그 변환된 값의 분포를 시각화할 수 있습니다. 이 변환은 카운티의 인구 수가 실제로는 멱법칙이 아니라 거의 완벽한 로그 정규 분포를 따르기 때문에 여기서 작동합니다(섹션 \@ref(qq-plots) 참조). 실제로 로그 변환된 값의 밀도 그림은 멋진 종 모양 곡선을 보여주고 해당 ecdf는 멋진 S자 모양을 보여줍니다(그림 \@ref(fig:county-populations-log)).

(ref:county-populations-log) 미국 카운티 주민 수의 로그 분포. (a) 밀도 그림. (b) 경험적 누적 분포 함수.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_II_files/figure-html/county-populations-log-1.png" alt="(ref:county-populations-log)" width="480" />
<p class="caption">(\#fig:county-populations-log)(ref:county-populations-log)</p>
</div>

이 분포가 멱법칙이 아니라는 것을 보기 위해 로그 *x* 및 *y* 축이 있는 내림차순 ecdf로 플로팅합니다. 이 시각화에서 멱법칙은 완벽한 직선으로 나타납니다. 카운티의 인구 수의 경우 오른쪽 꼬리는 내림차순 로그-로그 ecdf 플롯에서 거의 직선을 형성하지만 완벽하지는 않습니다(그림 \@ref(fig:county-populations-tail-log-log)).

(ref:county-populations-tail-log-log) 해당 주민 수 이상의 카운티 상대 빈도 대 카운티 주민 수.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_II_files/figure-html/county-populations-tail-log-log-1.png" alt="(ref:county-populations-tail-log-log)" width="576" />
<p class="caption">(\#fig:county-populations-tail-log-log)(ref:county-populations-tail-log-log)</p>
</div>

두 번째 예로 소설 모비 딕에 나오는 모든 단어의 단어 빈도 분포를 사용하겠습니다. 이 분포는 완벽한 멱법칙을 따릅니다. 로그 축이 있는 내림차순 ecdf로 플로팅하면 거의 완벽한 직선을 볼 수 있습니다(그림 \@ref(fig:word-counts-tail-log-log)).

(ref:word-counts-tail-log-log) 소설 모비 딕의 단어 수 분포. 소설에서 해당 횟수 이상으로 나오는 단어의 상대 빈도 대 단어가 사용된 횟수가 표시됩니다.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_II_files/figure-html/word-counts-tail-log-log-1.png" alt="(ref:word-counts-tail-log-log)" width="576" />
<p class="caption">(\#fig:word-counts-tail-log-log)(ref:word-counts-tail-log-log)</p>
</div>

## 분위수-분위수 그림 {#qq-plots}

분위수-분위수(q-q) 그림은 관찰된 데이터 포인트가 주어진 분포를 따르는지 여부를 결정하려는 경우 유용한 시각화입니다. ecdf와 마찬가지로 q-q 그림도 데이터를 순위 매기고 순위와 실제 값 간의 관계를 시각화하는 데 기반합니다. 그러나 q-q 그림에서는 순위를 직접 플로팅하지 않고 데이터가 지정된 참조 분포에 따라 분포된 경우 특정 데이터 포인트가 어디에 있어야 하는지 예측하는 데 사용합니다. 가장 일반적으로 q-q 그림은 정규 분포를 참조로 사용하여 구성됩니다. 구체적인 예를 들면 실제 데이터 값의 평균이 10이고 표준 편차가 3이라고 가정합니다. 그런 다음 정규 분포를 가정하면 50번째 백분위수에 순위가 매겨진 데이터 포인트는 위치 10(평균)에 있어야 하고 84번째 백분위수에 순위가 매겨진 데이터 포인트는 위치 13(평균보다 1 표준 편차 위)에 있어야 하며 2.3번째 백분위수에 순위가 매겨진 데이터 포인트는 위치 4(평균보다 2 표준 편차 아래)에 있어야 합니다. 데이터 세트의 모든 포인트에 대해 이 계산을 수행한 다음 관찰된 값(즉, 데이터 세트의 값)을 이론적 값(즉, 각 데이터 포인트의 순위와 가정된 참조 분포를 고려하여 예상되는 값)과 비교하여 플로팅할 수 있습니다.

이 장의 시작 부분에 있는 학생 성적 분포에 대해 이 절차를 수행하면 그림 \@ref(fig:student-grades-qq)를 얻을 수 있습니다.

(ref:student-grades-qq) 학생 성적의 q-q 그림.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_II_files/figure-html/student-grades-qq-1.png" alt="(ref:student-grades-qq)" width="480" />
<p class="caption">(\#fig:student-grades-qq)(ref:student-grades-qq)</p>
</div>

여기서 실선은 회귀선이 아니라 *x*가 *y*와 같은, 즉 관찰된 값이 이론적 값과 같은 점을 나타냅니다. 점이 해당 선 위에 있는 한 데이터는 가정된 분포(여기서는 정규)를 따릅니다. 학생 성적은 대부분 정규 분포를 따르며 아래쪽과 위쪽에 약간의 편차가 있습니다(몇몇 학생은 양쪽 끝에서 예상보다 낮은 성적을 받았습니다). 위쪽 끝에서 분포의 편차는 가상 시험의 최대 점수인 100점 때문에 발생합니다. 가장 우수한 학생이 아무리 뛰어나더라도 최대 100점까지만 받을 수 있습니다.


또한 이 장의 앞부분에서 미국 카운티의 인구 수가 로그 정규 분포를 따른다는 제 주장을 테스트하기 위해 q-q 그림을 사용할 수도 있습니다. 이러한 수가 로그 정규 분포를 따르는 경우 로그 변환된 값은 정규 분포를 따르므로 *x* = *y* 선 위에 바로 있어야 합니다. 이 그림을 만들면 관찰된 값과 이론적 값 간의 일치가 예외적임을 알 수 있습니다(그림 \@ref(fig:county-populations-qq)). 이는 카운티 간 인구 수 분포가 실제로 로그 정규 분포임을 보여줍니다.

(ref:county-populations-qq) 미국 카운티 주민 수의 로그에 대한 q-q 그림.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_II_files/figure-html/county-populations-qq-1.png" alt="(ref:county-populations-qq)" width="480" />
<p class="caption">(\#fig:county-populations-qq)(ref:county-populations-qq)</p>
</div>
