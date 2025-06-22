```
## 경고: 패키지 'sf'는 R 버전 3.5.2에서 빌드되었습니다.
```

# 시각화 디렉토리 {#directory-of-visualizations}

이 장에서는 데이터를 시각화하는 데 일반적으로 사용되는 다양한 플롯과 차트에 대한 간략한 시각적 개요를 제공합니다. 이름을 모를 수 있는 특정 시각화를 찾는 경우 목차 역할을 하기도 하고, 일상적으로 만드는 그림의 대안을 찾아야 하는 경우 영감의 원천이 되기도 합니다.



## 양

<img src="directory_of_visualizations_files/figure-html/amounts-1.png" width="685.714285714286" style="display: block; margin: auto;" />

양(즉, 일부 범주 집합에 대해 표시되는 수치 값)을 시각화하는 가장 일반적인 방법은 수직 또는 수평으로 배열된 막대를 사용하는 것입니다(챕터 \@ref(visualizing-amounts)). 그러나 막대를 사용하는 대신 해당 막대가 끝나는 위치에 점을 배치할 수도 있습니다(챕터 \@ref(visualizing-amounts)).

<img src="directory_of_visualizations_files/figure-html/amounts_multi-1.png" width="685.714285714286" style="display: block; margin: auto;" />

양을 표시하려는 범주 집합이 두 개 이상인 경우 막대를 그룹화하거나 누적할 수 있습니다(챕터 \@ref(visualizing-amounts)). 또한 범주를 *x* 축과 *y* 축에 매핑하고 히트맵을 통해 색상으로 양을 표시할 수도 있습니다(챕터 \@ref(visualizing-amounts)).


## 분포

<img src="directory_of_visualizations_files/figure-html/single-distributions-1.png" width="685.714285714286" style="display: block; margin: auto;" />

히스토그램과 밀도 그림(챕터 \@ref(histograms-density-plots))은 분포의 가장 직관적인 시각화를 제공하지만 둘 다 임의의 매개변수 선택이 필요하며 오해의 소지가 있을 수 있습니다. 누적 밀도와 분위수-분위수(q-q) 그림(챕터 \@ref(ecdf-qq))은 항상 데이터를 충실하게 나타내지만 해석하기 더 어려울 수 있습니다.


<img src="directory_of_visualizations_files/figure-html/multiple-distributions-1.png" width="685.714285714286" style="display: block; margin: auto;" />

상자 그림, 바이올린, 스트립 차트, 시나 그림은 한 번에 많은 분포를 시각화하거나 분포 간의 전반적인 변화에 주로 관심이 있을 때 유용합니다(챕터 \@ref(boxplots-violins-vertical)). 누적 히스토그램과 중첩 밀도는 더 적은 수의 분포를 더 심층적으로 비교할 수 있지만 누적 히스토그램은 해석하기 어려울 수 있으며 피하는 것이 가장 좋습니다(챕터 \@ref(multiple-histograms-densities)). 능선 그림은 바이올린 그림의 유용한 대안이 될 수 있으며 매우 많은 수의 분포를 시각화하거나 시간 경과에 따른 분포 변화를 시각화할 때 종종 유용합니다(챕터 \@ref(boxplots-violins-horizontal)).

## 비율

<img src="directory_of_visualizations_files/figure-html/proportions-1.png" width="685.714285714286" style="display: block; margin: auto;" />

비율은 원형 차트, 나란히 놓인 막대 또는 누적 막대로 시각화할 수 있으며(챕터 \@ref(visualizing-proportions)), 양의 경우와 마찬가지로 막대는 수직 또는 수평으로 배열할 수 있습니다. 원형 차트는 개별 부분이 전체를 구성하고 단순한 분수를 강조한다는 점을 강조합니다. 그러나 개별 조각은 나란히 놓인 막대에서 더 쉽게 비교할 수 있습니다. 누적 막대는 단일 비율 집합에 대해 어색해 보이지만 여러 비율 집합을 비교할 때 유용할 수 있습니다(아래 참조).


<img src="directory_of_visualizations_files/figure-html/proportions-comp-1.png" width="685.714285714286" style="display: block; margin: auto;" />

여러 비율 집합을 시각화하거나 조건에 따른 비율 변화를 시각화할 때 원형 차트는 공간 효율성이 떨어지고 관계를 모호하게 만드는 경향이 있습니다. 그룹화된 막대는 비교하는 조건 수가 적당한 한 잘 작동하며 누적 막대는 많은 수의 조건에 대해 작동할 수 있습니다. 누적 밀도(챕터 \@ref(visualizing-proportions))는 비율이 연속 변수를 따라 변할 때 적합합니다.

<img src="directory_of_visualizations_files/figure-html/proportions-multi-1.png" width="685.714285714286" style="display: block; margin: auto;" />

비율이 여러 그룹화 변수에 따라 지정되는 경우 모자이크 그림, 트리맵 또는 병렬 집합이 유용한 시각화 접근 방식입니다.
(챕터 \@ref(nested-proportions)). 모자이크 그림은 한 그룹화 변수의 모든 수준이 다른 그룹화 변수의 모든 수준과 결합될 수 있다고 가정하는 반면 트리맵은 이러한 가정을 하지 않습니다. 트리맵은 한 그룹의 하위 구분이 다른 그룹의 하위 구분과 완전히 다른 경우에도 잘 작동합니다. 병렬 집합은 그룹화 변수가 두 개 이상인 경우 모자이크 그림이나 트리맵보다 더 잘 작동합니다.


## *x*--*y* 관계

<img src="directory_of_visualizations_files/figure-html/basic-scatter-1.png" width="685.714285714286" style="display: block; margin: auto;" />


산점도는 한 정량적 변수를 다른 정량적 변수와 비교하여 표시할 때 전형적인 시각화를 나타냅니다(챕터 \@ref(associations-scatterplots)). 세 개의 정량적 변수가 있는 경우 점 크기에 하나를 매핑하여 버블 차트라는 산점도의 변형을 만들 수 있습니다. *x* 축과 *y* 축을 따른 변수가 동일한 단위로 측정되는 쌍을 이룬 데이터의 경우 일반적으로 *x* = *y*를 나타내는 선을 추가하는 것이 도움이 됩니다(챕터 \@ref(associations-paired-data)). 쌍을 이룬 데이터는 직선으로 연결된 쌍을 이룬 점의 경사 그래프로 표시할 수도 있습니다(챕터 \@ref(associations-paired-data)).

<img src="directory_of_visualizations_files/figure-html/xy-binning-1.png" width="685.714285714286" style="display: block; margin: auto;" />

많은 수의 점에 대해 일반 산점도는 중복 플로팅으로 인해 정보를 제공하지 못할 수 있습니다. 이 경우 등고선, 2D 구간 또는 육각 구간이 대안을 제공할 수 있습니다(챕터 \@ref(overlapping-points)). 반면에 두 개 이상의 양을 시각화하려는 경우 기본 원시 데이터 대신 상관 계수를 상관도 형태로 플로팅하도록 선택할 수 있습니다(챕터 \@ref(associations-correlograms)).

<img src="directory_of_visualizations_files/figure-html/xy-lines-1.png" width="685.714285714286" style="display: block; margin: auto;" />

*x* 축이 시간 또는 치료 용량과 같이 엄격하게 증가하는 양을 나타낼 때 일반적으로 선 그래프를 그립니다(챕터 \@ref(time-series)). 두 반응 변수의 시간적 순서가 있는 경우 두 반응 변수를 산점도에 먼저 플로팅한 다음 인접한 시간 지점에 해당하는 점을 연결하는 연결된 산점도를 그릴 수 있습니다(챕터 \@ref(time-series-connected-scatter)). 더 큰 데이터 세트의 추세를 나타내기 위해 평활선을 사용할 수 있습니다(챕터 \@ref(visualizing-trends)).


## 지리 공간 데이터 {#directory-geospatial-data}

<img src="directory_of_visualizations_files/figure-html/geospatial-1.png" width="685.714285714286" style="display: block; margin: auto;" />

지리 공간 데이터를 표시하는 주요 방법은 지도 형태입니다(챕터 \@ref(geospatial-data)). 지도는 지구상의 좌표를 가져와 평평한 표면에 투영하여 지구상의 모양과 거리가 2D 표현의 모양과 거리로 대략적으로 표현되도록 합니다. 또한 데이터에 따라 해당 지역을 색칠하여 다른 지역의 데이터 값을 표시할 수 있습니다. 이러한 지도를 단계 구분도라고 합니다(챕터 \@ref(choropleth-mapping)). 경우에 따라 다른 양(예: 인구 수)에 따라 다른 지역을 왜곡하거나 각 지역을 정사각형으로 단순화하는 것이 도움이 될 수 있습니다. 이러한 시각화를 카토그램이라고 합니다.

## 불확실성 {#directory-uncertainty}

<img src="directory_of_visualizations_files/figure-html/errorbars-1.png" width="685.714285714286" style="display: block; margin: auto;" />

오차 막대는 일부 추정치 또는 측정값에 대한 가능한 값의 범위를 나타냅니다. 추정치 또는 측정값을 나타내는 일부 참조점에서 수평 및/또는 수직으로 확장됩니다(챕터 \@ref(visualizing-uncertainty)). 참조점은 점이나 막대와 같은 다양한 방식으로 표시할 수 있습니다. 등급
오차 막대는 동시에 여러 범위를 표시하며 각 범위는 다른 신뢰도 수준에 해당합니다. 사실상 서로 다른 선 두께를 가진 여러 오차 막대를 서로 겹쳐 그린 것입니다.

<img src="directory_of_visualizations_files/figure-html/confidence-dists-1.png" width="685.714285714286" style="display: block; margin: auto;" />

오차 막대 또는 등급 오차 막대로 가능한 것보다 더 자세한 시각화를 얻으려면 실제 신뢰 구간 또는 사후 분포를 시각화할 수 있습니다(챕터 \@ref(visualizing-uncertainty)). 신뢰 구간은 불확실성에 대한 명확한 시각적 감각을 제공하지만 정확하게 읽기 어렵습니다. 눈 모양 그림과 반쪽 눈 모양 그림은 오차 막대와 분포 시각화 접근 방식(각각 바이올린 및 능선 그림)을 결합하여 일부 신뢰 수준에 대한 정확한 범위와 전체 불확실성 분포를 모두 보여줍니다. 분위수 점 그림은 불확실성 분포의 대안적인 시각화 역할을 할 수 있습니다(챕터 \@ref(frequency-framing)). 분포를 이산 단위로 표시함으로써 분위수 점 그림은 바이올린 또는 능선 그림으로 표시되는 연속 분포만큼 정확하지는 않지만 읽기 더 쉬울 수 있습니다.

<img src="directory_of_visualizations_files/figure-html/confidence-bands-1.png" width="685.714285714286" style="display: block; margin: auto;" />

평활 선 그래프의 경우 오차 막대에 해당하는 것은 신뢰대입니다(챕터 \@ref(uncertainty-curve-fits)). 주어진 신뢰 수준에서 선이 통과할 수 있는 값의 범위를 보여줍니다. 오차 막대의 경우와 마찬가지로 여러 신뢰 수준을 한 번에 표시하는 등급 신뢰대를 그릴 수 있습니다. 신뢰대 대신 또는 신뢰대에 추가하여 개별 적합된 추출을 표시할 수도 있습니다.
