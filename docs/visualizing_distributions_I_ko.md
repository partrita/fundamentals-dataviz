# 분포 시각화: 히스토그램 및 밀도 그림 {#histograms-density-plots}

특정 변수가 데이터 세트에서 어떻게 분포되어 있는지 이해하고 싶은 상황을 자주 접합니다. 구체적인 예를 들기 위해 챕터 \@ref(visualizing-amounts)에서 이미 접한 데이터 세트인 타이타닉호의 승객을 고려해 보겠습니다. 타이타닉호에는 약 1300명의 승객이 탑승했으며(승무원 제외) 그중 756명의 연령이 보고되었습니다. 타이타닉호에 어떤 연령대의 승객이 얼마나 많았는지, 즉 어린이, 청년, 중년, 노인 등이 얼마나 많았는지 알고 싶을 수 있습니다. 승객 중 여러 연령대의 상대적 비율을 승객의 *연령 분포*라고 합니다.

## 단일 분포 시각화

모든 승객을 비슷한 연령대의 구간으로 그룹화한 다음 각 구간의 승객 수를 계산하여 승객 간의 연령 분포를 파악할 수 있습니다. 이 절차를 통해 표 \@ref(tab:titanic-ages)와 같은 표가 생성됩니다.

<table class="kable_wrapper">
<caption>(\#tab:titanic-ages)타이타닉호에 탑승한 연령이 알려진 승객 수.</caption>
<tbody>
  <tr>
   <td>

연령대    수
----------  ------
0--5            36
6--10           19
11--15          18
16--20          99
21--25         139
26--30         121

 </td>
   <td>

연령대    수
----------  ------
31--35          76
36--40          74
41--45          54
46--50          50
51--55          26
56--60          22

 </td>
   <td>

연령대    수
----------  ------
61--65          16
66--70           3
71--75           3

 </td>
  </tr>
</tbody>
</table>

높이가 개수에 해당하고 너비가 연령 구간의 너비에 해당하는 채워진 사각형을 그려 이 표를 시각화할 수 있습니다(그림 \@ref(fig:titanic-ages-hist1)). 이러한 시각화를 히스토그램이라고 합니다. (시각화가 유효한 히스토그램이 되려면 모든 구간의 너비가 동일해야 합니다.)

(ref:titanic-ages-hist1) 타이타닉호 승객 연령 히스토그램.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_I_files/figure-html/titanic-ages-hist1-1.png" alt="(ref:titanic-ages-hist1)" width="576" />
<p class="caption">(\#fig:titanic-ages-hist1)(ref:titanic-ages-hist1)</p>
</div>

히스토그램은 데이터를 구간화하여 생성되므로 정확한 시각적 모양은 구간 너비 선택에 따라 달라집니다. 히스토그램을 생성하는 대부분의 시각화 프로그램은 기본적으로 구간 너비를 선택하지만 해당 구간 너비가 만들고 싶은 모든 히스토그램에 가장 적합하지 않을 가능성이 높습니다. 따라서 결과 히스토그램이 기본 데이터를 정확하게 반영하는지 확인하기 위해 항상 여러 구간 너비를 시도하는 것이 중요합니다. 일반적으로 구간 너비가 너무 작으면 히스토그램이 지나치게 뾰족하고 시각적으로 복잡해지며 데이터의 주요 추세가 모호해질 수 있습니다. 반면에 구간 너비가 너무 크면 10세 전후의 하락과 같은 데이터 분포의 작은 특징이 사라질 수 있습니다.

타이타닉호 승객의 연령 분포의 경우 구간 너비가 1년이면 너무 작고 구간 너비가 15년이면 너무 크며 3~5년 사이의 구간 너비는 잘 작동하는 것을 볼 수 있습니다(그림 \@ref(fig:titanic-ages-hist-grid)).

(ref:titanic-ages-hist-grid) 히스토그램은 선택한 구간 너비에 따라 달라집니다. 여기서 동일한 타이타닉호 승객 연령 분포가 네 가지 다른 구간 너비로 표시됩니다. (a) 1년; (b) 3년; (c) 5년; (d) 15년.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_I_files/figure-html/titanic-ages-hist-grid-1.png" alt="(ref:titanic-ages-hist-grid)" width="754.285714285714" />
<p class="caption">(\#fig:titanic-ages-hist-grid)(ref:titanic-ages-hist-grid)</p>
</div>

<div class="rmdtip">
<p>히스토그램을 만들 때는 항상 여러 구간 너비를 탐색하십시오.</p>
</div>

히스토그램은 적어도 18세기부터 인기 있는 시각화 옵션이었는데, 부분적으로는 손으로 쉽게 생성할 수 있기 때문입니다. 최근에는 노트북과 휴대폰과 같은 일상적인 장치에서 광범위한 컴퓨팅 성능을 사용할 수 있게 되면서 밀도 그림으로 점점 더 많이 대체되고 있습니다. 밀도 그림에서는 적절한 연속 곡선을 그려 데이터의 기본 확률 분포를 시각화하려고 합니다(그림 \@ref(fig:titanic-ages-dens1)). 이 곡선은 데이터에서 추정해야 하며 이 추정 절차에 가장 일반적으로 사용되는 방법은 *커널 밀도 추정*이라고 합니다. 커널 밀도 추정에서는 각 데이터 포인트 위치에 작은 너비(대역폭이라는 매개변수로 제어됨)를 가진 연속 곡선(커널)을 그린 다음 이러한 모든 곡선을 더하여 최종 밀도 추정치를 얻습니다. 가장 널리 사용되는 커널은 가우시안 커널(즉, 가우시안 종 모양 곡선)이지만 다른 많은 선택 사항이 있습니다.

(ref:titanic-ages-dens1) 타이타닉호 승객 연령 분포의 커널 밀도 추정치. 곡선의 높이는 곡선 아래 면적이 1이 되도록 조정됩니다. 밀도 추정은 가우시안 커널과 대역폭 2를 사용하여 수행되었습니다.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_I_files/figure-html/titanic-ages-dens1-1.png" alt="(ref:titanic-ages-dens1)" width="576" />
<p class="caption">(\#fig:titanic-ages-dens1)(ref:titanic-ages-dens1)</p>
</div>

히스토그램의 경우와 마찬가지로 밀도 그림의 정확한 시각적 모양은 커널 및 대역폭 선택에 따라 달라집니다(그림 \@ref(fig:titanic-ages-dens-grid)). 대역폭 매개변수는 히스토그램의 구간 너비와 유사하게 작동합니다. 대역폭이 너무 작으면 밀도 추정치가 지나치게 뾰족하고 시각적으로 복잡해지며 데이터의 주요 추세가 모호해질 수 있습니다. 반면에 대역폭이 너무 크면 데이터 분포의 작은 특징이 사라질 수 있습니다. 또한 커널 선택은 밀도 곡선의 모양에 영향을 미칩니다. 예를 들어 가우시안 커널은 부드러운 특징과 꼬리가 있는 가우시안과 유사한 밀도 추정치를 생성하는 경향이 있습니다. 반대로 직사각형 커널은 밀도 곡선에 계단 모양을 만들 수 있습니다(그림 \@ref(fig:titanic-ages-dens-grid)d). 일반적으로 데이터 세트에 데이터 포인트가 많을수록 커널 선택이 덜 중요합니다. 따라서 밀도 그림은 큰 데이터 세트에 대해 매우 신뢰할 수 있고 유익한 경향이 있지만 몇 개의 포인트만 있는 데이터 세트에는 오해의 소지가 있을 수 있습니다.

(ref:titanic-ages-dens-grid) 커널 밀도 추정치는 선택한 커널과 대역폭에 따라 달라집니다. 여기서 동일한 타이타닉호 승객 연령 분포가 이러한 매개변수의 네 가지 다른 조합에 대해 표시됩니다. (a) 가우시안 커널, 대역폭 = 0.5; (b) 가우시안 커널, 대역폭 = 2; (c) 가우시안 커널, 대역폭 = 5; (d) 직사각형 커널, 대역폭 = 2.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_I_files/figure-html/titanic-ages-dens-grid-1.png" alt="(ref:titanic-ages-dens-grid)" width="754.285714285714" />
<p class="caption">(\#fig:titanic-ages-dens-grid)(ref:titanic-ages-dens-grid)</p>
</div>

밀도 곡선은 일반적으로 곡선 아래 면적이 1이 되도록 조정됩니다. 이 규칙은 *x* 축의 단위에 따라 달라지므로 *y* 축 눈금을 혼란스럽게 만들 수 있습니다. 예를 들어 연령 분포의 경우 *x* 축의 데이터 범위는 0에서 약 75까지입니다. 따라서 밀도 곡선의 평균 높이는 1/75 = 0.013이 될 것으로 예상됩니다. 실제로 연령 밀도 곡선(예: 그림 \@ref(fig:titanic-ages-dens-grid))을 보면 *y* 값이 0에서 약 0.04까지 범위이며 평균은 0.01에 가깝습니다.

커널 밀도 추정에는 주의해야 할 한 가지 함정이 있습니다. 특히 꼬리 부분에서 데이터가 없는 곳에 데이터가 있는 것처럼 보이는 경향이 있다는 것입니다. 결과적으로 밀도 추정치를 부주의하게 사용하면 무의미한 진술을 하는 그림이 쉽게 만들어질 수 있습니다. 예를 들어 주의를 기울이지 않으면 음의 연령을 포함하는 연령 분포 시각화를 생성할 수 있습니다(그림 \@ref(fig:titanic-ages-dens-negative)).


(ref:titanic-ages-dens-negative) 커널 밀도 추정은 분포의 꼬리를 데이터가 없고 데이터가 존재할 가능성조차 없는 영역으로 확장할 수 있습니다. 여기서 밀도 추정은 음의 연령 범위로 확장되도록 허용되었습니다. 이것은 분명히 무의미하며 피해야 합니다.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_I_files/figure-html/titanic-ages-dens-negative-1.png" alt="(ref:titanic-ages-dens-negative)" width="576" />
<p class="caption">(\#fig:titanic-ages-dens-negative)(ref:titanic-ages-dens-negative)</p>
</div>

<div class="rmdtip">
<p>밀도 추정치가 무의미한 데이터 값의 존재를 예측하지 않는지 항상 확인하십시오.</p>
</div>

그렇다면 분포를 시각화하기 위해 히스토그램을 사용해야 할까요, 아니면 밀도 그림을 사용해야 할까요? 이 주제에 대해 열띤 토론이 있을 수 있습니다. 어떤 사람들은 밀도 그림에 격렬하게 반대하며 임의적이고 오해의 소지가 있다고 생각합니다. 다른 사람들은 히스토그램도 마찬가지로 임의적이고 오해의 소지가 있을 수 있다는 것을 알고 있습니다. 저는 선택이 주로 취향의 문제라고 생각하지만 때로는 한 가지 또는 다른 옵션이 당면한 데이터의 특정 관심 특징을 더 정확하게 반영할 수 있습니다. 또한 둘 다 사용하지 않고 경험적 누적 밀도 함수 또는 q-q 그림을 선택할 가능성도 있습니다(챕터 \@ref(ecdf-qq)). 마지막으로 한 번에 둘 이상의 분포를 시각화하려는 경우 밀도 추정치가 히스토그램보다 본질적인 이점이 있다고 생각합니다(다음 섹션 참조).

## 여러 분포를 동시에 시각화하기 {#multiple-histograms-densities}

동시에 시각화하고 싶은 여러 분포가 있는 경우가 많습니다. 예를 들어 타이타닉호 승객의 연령이 남성과 여성 간에 어떻게 분포되어 있는지 알고 싶다고 가정해 보겠습니다. 남성과 여성 승객은 일반적으로 같은 연령대였을까요, 아니면 성별 간에 연령 차이가 있었을까요? 이 경우 일반적으로 사용되는 시각화 전략 중 하나는 누적 히스토그램으로, 남성에 대한 막대 위에 여성에 대한 막대를 다른 색상으로 그립니다(그림 \@ref(fig:titanic-age-stacked-hist)).

(ref:titanic-age-stacked-hist) 성별별로 계층화된 타이타닉호 승객 연령 히스토그램. 이 그림은 누적 히스토그램이 중첩 히스토그램과 쉽게 혼동될 수 있기 때문에 "나쁨"으로 표시되었습니다(그림 \@ref(fig:titanic-age-overlapping-hist) 참조). 또한 여성 승객을 나타내는 막대의 높이를 서로 쉽게 비교할 수 없습니다.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_I_files/figure-html/titanic-age-stacked-hist-1.png" alt="(ref:titanic-age-stacked-hist)" width="576" />
<p class="caption">(\#fig:titanic-age-stacked-hist)(ref:titanic-age-stacked-hist)</p>
</div>

제 생각에는 이러한 유형의 시각화는 피해야 합니다. 여기에는 두 가지 주요 문제가 있습니다. 첫째, 그림만 봐서는 막대가 정확히 어디에서 시작하는지 완전히 명확하지 않습니다. 색상이 바뀌는 곳에서 시작하는 걸까요, 아니면 0에서 시작하도록 되어 있는 걸까요? 즉, 18~20세 여성은 약 25명일까요, 아니면 거의 80명일까요? (전자가 맞습니다.) 둘째, 여성 수를 나타내는 막대의 높이를 직접 비교할 수 없습니다. 모든 막대가 다른 높이에서 시작하기 때문입니다. 예를 들어 남성은 평균적으로 여성보다 나이가 많았으며 이 사실은 그림 \@ref(fig:titanic-age-stacked-hist)에서 전혀 보이지 않습니다.

모든 막대가 0에서 시작하고 막대를 부분적으로 투명하게 만들어 이러한 문제를 해결하려고 시도할 수 있습니다(그림 \@ref(fig:titanic-age-overlapping-hist)).

(ref:titanic-age-overlapping-hist) 남성 및 여성 타이타닉호 승객의 연령 분포, 두 개의 중첩된 히스토그램으로 표시. 이 그림은 모든 파란색 막대가 0에서 시작한다는 명확한 시각적 표시가 없기 때문에 "나쁨"으로 표시되었습니다.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_I_files/figure-html/titanic-age-overlapping-hist-1.png" alt="(ref:titanic-age-overlapping-hist)" width="576" />
<p class="caption">(\#fig:titanic-age-overlapping-hist)(ref:titanic-age-overlapping-hist)</p>
</div>

그러나 이 접근 방식은 새로운 문제를 야기합니다. 이제 실제로는 두 그룹이 아니라 세 그룹이 있는 것처럼 보이며 각 막대가 어디에서 시작하고 끝나는지 여전히 완전히 확신할 수 없습니다. 중첩된 히스토그램은 다른 히스토그램 위에 그려진 반투명 막대가 반투명 막대처럼 보이지 않고 다른 색상으로 그려진 막대처럼 보이는 경향이 있기 때문에 잘 작동하지 않습니다.

중첩 밀도 그림은 일반적으로 중첩 히스토그램이 갖는 문제를 갖지 않는데, 연속적인 밀도 선이 눈이 분포를 분리하는 데 도움이 되기 때문입니다. 그러나 이 특정 데이터 세트의 경우 남성 및 여성 승객의 연령 분포는 약 17세까지 거의 동일하다가 갈라지므로 결과 시각화는 여전히 이상적이지 않습니다(그림 \@ref(fig:titanic-age-overlapping-dens)).

(ref:titanic-age-overlapping-dens) 남성 및 여성 타이타닉호 승객 연령의 밀도 추정치. 남성 승객이 여성 승객보다 많았음을 강조하기 위해 각 곡선 아래 면적이 알려진 연령의 남성 및 여성 승객 총 수(각각 468명 및 288명)에 해당하도록 밀도 곡선의 크기를 조정했습니다.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_I_files/figure-html/titanic-age-overlapping-dens-1.png" alt="(ref:titanic-age-overlapping-dens)" width="576" />
<p class="caption">(\#fig:titanic-age-overlapping-dens)(ref:titanic-age-overlapping-dens)</p>
</div>

이 데이터 세트에 잘 작동하는 해결책은 남성과 여성 승객의 연령 분포를 각각 전체 연령 분포의 비율로 개별적으로 표시하는 것입니다(그림 \@ref(fig:titanic-age-fractional-dens)). 이 시각화는 타이타닉호의 20~50세 연령대에 여성이 남성보다 훨씬 적었다는 것을 직관적이고 명확하게 보여줍니다.

(ref:titanic-age-fractional-dens) 남성 및 여성 타이타닉호 승객의 연령 분포, 승객 총계의 비율로 표시. 색칠된 영역은 각각 남성 및 여성 승객 연령의 밀도 추정치를 나타내고 회색 영역은 전체 승객 연령 분포를 나타냅니다.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_I_files/figure-html/titanic-age-fractional-dens-1.png" alt="(ref:titanic-age-fractional-dens)" width="754.285714285714" />
<p class="caption">(\#fig:titanic-age-fractional-dens)(ref:titanic-age-fractional-dens)</p>
</div>


마지막으로 정확히 두 개의 분포를 시각화하려는 경우 두 개의 개별 히스토그램을 만들고 90도 회전한 다음 한 히스토그램의 막대가 다른 히스토그램과 반대 방향을 가리키도록 할 수도 있습니다. 이 트릭은 연령 분포를 시각화할 때 일반적으로 사용되며 결과 플롯을 일반적으로 *연령 피라미드*라고 합니다(그림 \@ref(fig:titanic-age-pyramid)).

(ref:titanic-age-pyramid) 연령 피라미드로 시각화된 남성 및 여성 타이타닉호 승객의 연령 분포.

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_I_files/figure-html/titanic-age-pyramid-1.png" alt="(ref:titanic-age-pyramid)" width="576" />
<p class="caption">(\#fig:titanic-age-pyramid)(ref:titanic-age-pyramid)</p>
</div>

중요하게도 이 트릭은 동시에 시각화하려는 분포가 두 개 이상인 경우에는 작동하지 않습니다. 여러 분포의 경우 히스토그램은 매우 혼란스러워지는 경향이 있는 반면 밀도 그림은 분포가 다소 뚜렷하고 연속적인 한 잘 작동합니다. 예를 들어 네 가지 소 품종의 유지방 비율 분포를 시각화하려면 밀도 그림이 적합합니다(그림 \@ref(fig:butterfat-densitites)).

(ref:butterfat-densitites) 네 가지 소 품종 우유의 유지방 비율 밀도 추정치. 데이터 출처: 캐나다 순종 젖소 생산 능력 기록

<div class="figure" style="text-align: center">
<img src="visualizing_distributions_I_files/figure-html/butterfat-densitites-1.png" alt="(ref:butterfat-densitites)" width="576" />
<p class="caption">(\#fig:butterfat-densitites)(ref:butterfat-densitites)</p>
</div>

<div class="rmdtip">
<p>한 번에 여러 분포를 시각화하려면 히스토그램보다 커널 밀도 그림이 일반적으로 더 잘 작동합니다.</p>
</div>
