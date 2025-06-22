# 비율 시각화하기 {#visualizing-proportions}

어떤 그룹, 개체 또는 양이 전체의 *비율*을 나타내는 개별 조각으로 어떻게 나뉘는지 보여주고 싶은 경우가 많습니다. 일반적인 예로는 특정 집단의 남성과 여성 비율, 선거에서 여러 정당에 투표한 사람들의 비율 또는 기업의 시장 점유율 등이 있습니다. 이러한 시각화의 전형은 원형 차트이며, 모든 비즈니스 프레젠테이션에 omnipresent하고 데이터 과학자들 사이에서는 많이 비판받습니다. 앞으로 살펴보겠지만, 특히 전체가 여러 개의 다른 조각으로 나뉘거나 시간 경과 또는 조건에 따른 비율 변화를 보고 싶을 때 비율을 시각화하는 것은 어려울 수 있습니다. 항상 작동하는 단일한 이상적인 시각화는 없습니다. 이 문제를 설명하기 위해 각각 다른 유형의 시각화가 필요한 몇 가지 다른 시나리오를 논의하겠습니다.

<div class="rmdtip">
<p>기억하십시오. 항상 특정 데이터 세트에 가장 적합하고 보여주고 싶은 주요 데이터 특징을 강조하는 시각화를 선택해야 합니다.</p>
</div>


## 원형 차트의 경우

1961년부터 1983년까지 독일 의회(분데스탁이라고 함)는 세 개의 다른 정당인 CDU/CSU, SPD, FDP의 의원들로 구성되었습니다. 이 기간 대부분 동안 CDU/CSU와 SPD는 거의 비슷한 수의 의석을 가졌고 FDP는 일반적으로 전체 의석의 작은 부분만 차지했습니다. 예를 들어 1976년부터 1980년까지의 제8대 분데스탁에서 CDU/CSU는 243석, SPD는 214석, FDP는 39석으로 총 496석을 차지했습니다. 이러한 의회 데이터는 일반적으로 원형 차트로 시각화됩니다(그림 \@ref(fig:bundestag-pie)).

(ref:bundestag-pie) 1976년~1980년 제8대 독일 연방의회 정당 구성, 원형 차트로 시각화. 이 시각화는 SPD와 FDP의 연립 정부가 야당인 CDU/CSU보다 약간의 과반수를 차지했음을 명확하게 보여줍니다.

<div class="figure" style="text-align: center">
<img src="visualizing_proportions_files/figure-html/bundestag-pie-1.png" alt="(ref:bundestag-pie)" width="576" />
<p class="caption">(\#fig:bundestag-pie)(ref:bundestag-pie)</p>
</div>

원형 차트는 원을 조각으로 나누어 각 조각의 면적이 전체에서 차지하는 비율에 비례하도록 합니다. 동일한 절차를 직사각형에 수행할 수 있으며 결과는 누적 막대 차트입니다(그림 \@ref(fig:bundestag-stacked-bars)). 막대를 세로로 자르는지 가로로 자르는지에 따라 세로 누적 막대(그림 \@ref(fig:bundestag-stacked-bars)a) 또는 가로 누적 막대(그림 \@ref(fig:bundestag-stacked-bars)b)를 얻습니다.

(ref:bundestag-stacked-bars) 1976년~1980년 제8대 독일 연방의회 정당 구성, 누적 막대로 시각화. (a) 세로로 쌓인 막대. (b) 가로로 쌓인 막대. SPD와 FDP가 합쳐서 CDU/CSU보다 의석이 많았다는 것이 즉시 명확하지 않습니다.

<div class="figure" style="text-align: center">
<img src="visualizing_proportions_files/figure-html/bundestag-stacked-bars-1.png" alt="(ref:bundestag-stacked-bars)" width="754.285714285714" />
<p class="caption">(\#fig:bundestag-stacked-bars)(ref:bundestag-stacked-bars)</p>
</div>

그림 \@ref(fig:bundestag-stacked-bars)a의 막대를 가져와 서로 겹쳐 쌓는 대신 나란히 배치할 수도 있습니다. 이 시각화는 세 그룹을 직접 비교하기 쉽게 만들지만 데이터의 다른 측면을 모호하게 만듭니다(그림 \@ref(fig:bundestag-bars-side-by-side)). 가장 중요한 것은 나란히 놓인 막대 그래프에서 각 막대와 전체의 관계가 시각적으로 명확하지 않다는 것입니다.

(ref:bundestag-bars-side-by-side) 1976년~1980년 제8대 독일 연방의회 정당 구성, 나란히 놓인 막대로 시각화. 그림 \@ref(fig:bundestag-stacked-bars)에서와 마찬가지로 SPD와 FDP가 합쳐서 CDU/CSU보다 의석이 많았다는 것이 즉시 명확하지 않습니다.

<div class="figure" style="text-align: center">
<img src="visualizing_proportions_files/figure-html/bundestag-bars-side-by-side-1.png" alt="(ref:bundestag-bars-side-by-side)" width="480" />
<p class="caption">(\#fig:bundestag-bars-side-by-side)(ref:bundestag-bars-side-by-side)</p>
</div>

많은 저자들이 원형 차트를 단호하게 거부하고 나란히 놓인 막대나 누적 막대를 지지합니다. 다른 사람들은 일부 응용 프로그램에서 원형 차트 사용을 옹호합니다. 제 개인적인 의견은 이러한 시각화 중 어느 것도 다른 것보다 일관되게 우수하지 않다는 것입니다. 데이터 세트의 특징과 전달하려는 특정 이야기에 따라 한 가지 또는 다른 접근 방식을 선호할 수 있습니다. 제8대 독일 연방의회의 경우 원형 차트가 최상의 옵션이라고 생각합니다. SPD와 FDP의 연립 정부가 CDU/CSU보다 약간의 과반수를 차지했음을 명확하게 보여줍니다(그림 \@ref(fig:bundestag-pie)). 이 사실은 다른 어떤 플롯에서도 시각적으로 명확하지 않습니다(그림 \@ref(fig:bundestag-stacked-bars) 및 \@ref(fig:bundestag-bars-side-by-side)).

일반적으로 원형 차트는 1/2, 1/3 또는 1/4과 같은 단순한 분수를 강조하는 것이 목표일 때 잘 작동합니다. 또한 매우 작은 데이터 세트가 있는 경우에도 잘 작동합니다. 그림 \@ref(fig:bundestag-pie)와 같은 단일 원형 차트는 괜찮아 보이지만 그림 \@ref(fig:bundestag-stacked-bars)a와 같은 단일 열의 누적 막대는 어색해 보입니다. 반면에 누적 막대는 여러 조건의 나란히 비교 또는 시계열에서 작동할 수 있으며 개별 분수를 서로 직접 비교하려는 경우 나란히 놓인 막대가 선호됩니다. 원형 차트, 누적 막대 및 나란히 놓인 막대의 여러 장단점에 대한 요약은 표 \@ref(tab:pros-cons-pie-bar)에 나와 있습니다.

표: (\#tab:pros-cons-pie-bar) 비율 시각화에 대한 일반적인 접근 방식의 장단점: 원형 차트, 누적 막대 및 나란히 놓인 막대.

----------------------------------------------------------------------------------------
                                    원형 차트         누적 막대      나란히 놓인 막대
-----------------------------  ------------------- ------------------- -------------------
데이터를 전체의 비율로 명확하게 시각화             ✔                 ✔                   ✖

상대적 비율의 쉬운 시각적 비교 허용           ✖                 ✖                   ✔

1/2, 1/3, 1/4와 같은 단순 분수를 시각적으로 강조              ✔                 ✖                   ✖

매우 작은 데이터 세트에서도 시각적으로 매력적으로 보임                ✔                 ✖                   ✔

전체가 여러 조각으로 나뉘었을 때 잘 작동            ✖                 ✖                   ✔

여러 비율 집합 또는 비율 시계열 시각화에 잘 작동                      ✖                 ✔                   ✖
----------------------------------------------------------------------------------------


## 나란히 놓인 막대의 경우 {#side-by-side-bars}

이제 원형 차트가 실패하는 경우를 보여 드리겠습니다. 이 예는 원래 위키백과에 게시된 원형 차트에 대한 비판을 모델로 삼았습니다[@Schutz-piecharts]. 다섯 개의 가상 회사 A, B, C, D, E가 모두 약 20%의 비슷한 시장 점유율을 가지고 있다고 가정해 보겠습니다. 가상 데이터 세트에는 3년 연속 각 회사의 시장 점유율이 나열되어 있습니다. 이 데이터 세트를 원형 차트로 시각화하면 정확히 무슨 일이 일어나고 있는지 파악하기 어렵습니다(그림 \@ref(fig:marketshare-pies)). 회사 A의 시장 점유율은 증가하고 회사 E의 시장 점유율은 감소하는 것처럼 보이지만 이 관찰 외에는 무슨 일이 일어나고 있는지 알 수 없습니다. 특히 각 연도 내 여러 회사의 시장 점유율을 정확히 비교하기는 불분명합니다.


(ref:marketshare-pies) 2015년~2017년 다섯 개 가상 회사 A~E의 시장 점유율, 원형 차트로 시각화. 이 시각화에는 두 가지 주요 문제가 있습니다. 1. 연도 내 상대적 시장 점유율 비교가 거의 불가능합니다. 2. 연도 간 시장 점유율 변화를 보기 어렵습니다.

<div class="figure" style="text-align: center">
<img src="visualizing_proportions_files/figure-html/marketshare-pies-1.png" alt="(ref:marketshare-pies)" width="685.714285714286" />
<p class="caption">(\#fig:marketshare-pies)(ref:marketshare-pies)</p>
</div>

누적 막대로 전환하면 그림이 약간 더 명확해집니다(그림 \@ref(fig:marketshare-stacked)). 이제 회사 A의 시장 점유율 증가 추세와 회사 E의 시장 점유율 감소 추세가 명확하게 보입니다. 그러나 각 연도 내 5개 회사의 상대적 시장 점유율은 여전히 비교하기 어렵습니다. 그리고 회사 B, C, D의 시장 점유율을 연도별로 비교하기는 어렵습니다. 막대가 연도별로 서로 상대적으로 이동하기 때문입니다. 이것은 누적 막대 그래프의 일반적인 문제이며 제가 일반적으로 이러한 유형의 시각화를 권장하지 않는 주된 이유입니다.

(ref:marketshare-stacked) 2015년~2017년 다섯 개 가상 회사의 시장 점유율, 누적 막대로 시각화. 이 시각화에는 두 가지 주요 문제가 있습니다. 1. 연도 내 상대적 시장 점유율 비교가 어렵습니다. 2. 막대 위치가 연도별로 변경되므로 중간 회사 B, C, D의 연도 간 시장 점유율 변화를 보기 어렵습니다.

<div class="figure" style="text-align: center">
<img src="visualizing_proportions_files/figure-html/marketshare-stacked-1.png" alt="(ref:marketshare-stacked)" width="576" />
<p class="caption">(\#fig:marketshare-stacked)(ref:marketshare-stacked)</p>
</div>

이 가상 데이터 세트의 경우 나란히 놓인 막대가 최상의 선택입니다(그림 \@ref(fig:marketshare-side-by-side)). 이 시각화는 회사 A와 B 모두 2015년부터 2017년까지 시장 점유율을 높인 반면 회사 D와 E는 모두 시장 점유율을 줄였음을 강조합니다. 또한 2015년에는 회사 A에서 E로 시장 점유율이 순차적으로 증가하고 2017년에는 유사하게 감소함을 보여줍니다.

(ref:marketshare-side-by-side) 2015년~2017년 다섯 개 가상 회사의 시장 점유율, 나란히 놓인 막대로 시각화.

<div class="figure" style="text-align: center">
<img src="visualizing_proportions_files/figure-html/marketshare-side-by-side-1.png" alt="(ref:marketshare-side-by-side)" width="576" />
<p class="caption">(\#fig:marketshare-side-by-side)(ref:marketshare-side-by-side)</p>
</div>


## 누적 막대 및 누적 밀도에 대한 사례 {#stacked-densities}

섹션 \@ref(side-by-side-bars)에서 내부 막대의 위치가 시퀀스를 따라 이동하기 때문에 일반적으로 누적 막대 시퀀스를 권장하지 않는다고 썼습니다. 그러나 각 스택에 막대가 두 개만 있는 경우 이동하는 내부 막대 문제가 사라지며 결과 시각화가 매우 명확해질 수 있습니다. 예를 들어 한 국가의 국회에서 여성 비율을 생각해 보십시오. 특히 2016년 기준으로 여성 국회의원 비율이 가장 높은 국가 목록에서 1위를 차지한 아프리카 국가 르완다를 살펴보겠습니다. 르완다는 2008년부터 여성 과반수 국회를 유지했으며 2013년부터는 국회의원 거의 3분의 2가 여성입니다. 르완다 국회에서 여성 비율이 시간 경과에 따라 어떻게 변했는지 시각화하기 위해 누적 막대 그래프 시퀀스를 그릴 수 있습니다(그림 \@ref(fig:women-parliament)). 이 그림은 시간 경과에 따른 비율 변화를 즉각적으로 시각적으로 나타냅니다. 독자가 과반수가 언제 여성으로 바뀌었는지 정확히 알 수 있도록 50%에 파선 수평선을 추가했습니다. 이 선이 없으면 2003년부터 2007년까지 과반수가 남성이었는지 여성이었는지 판단하기가 거의 불가능했을 것입니다. 그림이 너무 복잡해지는 것을 피하기 위해 25%와 75%에 유사한 선을 추가하지 않았습니다.

(ref:women-parliament) 1997년부터 2016년까지 르완다 의회의 성별 구성 변화. 데이터 출처: 국제 의회 연맹(IPU), ipu.org.

<div class="figure" style="text-align: center">
<img src="visualizing_proportions_files/figure-html/women-parliament-1.png" alt="(ref:women-parliament)" width="576" />
<p class="caption">(\#fig:women-parliament)(ref:women-parliament)</p>
</div>

비율이 연속 변수에 따라 어떻게 변하는지 시각화하려는 경우 누적 막대에서 누적 밀도로 전환할 수 있습니다. 누적 밀도는 나란히 배열된 무한히 많은 무한히 작은 누적 막대의 극한 경우로 생각할 수 있습니다. 누적 밀도 그림의 밀도는 일반적으로 챕터 \@ref(histograms-density-plots)에서 설명한 커널 밀도 추정에서 얻으며 이 방법의 장단점에 대한 일반적인 논의는 해당 장을 참조하십시오.

누적 밀도가 적절할 수 있는 예를 들기 위해 연령의 함수로서 사람들의 건강 상태를 생각해 보십시오. 연령은 연속 변수로 간주할 수 있으며 이러한 방식으로 데이터를 시각화하는 것은 상당히 잘 작동합니다(그림 \@ref(fig:health-vs-age)). 여기에는 네 가지 건강 범주가 있고 위에서 논의한 것처럼 여러 조건을 쌓는 것을 일반적으로 좋아하지 않지만 이 경우에는 그림이 허용 가능하다고 생각합니다. 전반적으로 건강은 사람들이 나이가 들면서 감소하지만 이러한 추세에도 불구하고 인구의 절반 이상이 매우 늙을 때까지 양호하거나 우수한 건강 상태를 유지한다는 것을 명확하게 알 수 있습니다.

(ref:health-vs-age) 일반 사회 조사(GSS)에서 보고된 연령별 건강 상태.

<div class="figure" style="text-align: center">
<img src="visualizing_proportions_files/figure-html/health-vs-age-1.png" alt="(ref:health-vs-age)" width="576" />
<p class="caption">(\#fig:health-vs-age)(ref:health-vs-age)</p>
</div>

그럼에도 불구하고 이 그림에는 주요 한계가 있습니다. 네 가지 건강 상태의 비율을 전체의 백분율로 시각화함으로써 데이터 세트에 노인보다 젊은 사람이 훨씬 더 많다는 사실을 모호하게 만듭니다. 따라서 70년에 걸친 연령에 걸쳐 양호한 건강 상태라고 보고하는 사람들의 *백분율*은 거의 변하지 않지만 특정 연령의 총 인구 수가 감소함에 따라 양호한 건강 상태의 사람들의 *절대 수*는 감소합니다. 다음 섹션에서 이 문제에 대한 잠재적인 해결책을 제시하겠습니다.


## 전체의 일부로 비율을 개별적으로 시각화하기

나란히 놓인 막대는 전체에 대한 개별 부분의 크기를 명확하게 시각화하지 못하는 문제가 있고 누적 막대는 기준선이 다르기 때문에 여러 막대를 쉽게 비교할 수 없는 문제가 있습니다. 각 부분에 대해 별도의 플롯을 만들고 각 플롯에서 전체에 대한 해당 부분을 표시하여 이러한 두 가지 문제를 해결할 수 있습니다. 그림 \@ref(fig:health-vs-age)의 건강 데이터 세트의 경우 이 절차를 통해 그림 \@ref(fig:health-vs-age-facets)가 생성됩니다. 데이터 세트의 전체 연령 분포는 음영 처리된 회색 영역으로 표시되고 각 건강 상태에 대한 연령 분포는 파란색으로 표시됩니다. 이 그림은 절대적인 측면에서 우수하거나 양호한 건강 상태의 사람 수가 30~40세 이후에 감소하는 반면 보통 건강 상태의 사람 수는 모든 연령대에 걸쳐 거의 일정하게 유지됨을 강조합니다.

(ref:health-vs-age-facets) 설문 조사 대상 총 인원 수의 비율로 표시된 연령별 건강 상태. 색칠된 영역은 해당 건강 상태를 가진 사람들의 연령 밀도 추정치를 나타내고 회색 영역은 전체 연령 분포를 나타냅니다.

<div class="figure" style="text-align: center">
<img src="visualizing_proportions_files/figure-html/health-vs-age-facets-1.png" alt="(ref:health-vs-age-facets)" width="754.285714285714" />
<p class="caption">(\#fig:health-vs-age-facets)(ref:health-vs-age-facets)</p>
</div>



두 번째 예를 들기 위해 동일한 설문 조사의 다른 변수인 혼인 상태를 고려해 보겠습니다. 혼인 상태는 건강 상태보다 연령에 따라 훨씬 더 급격하게 변하며 혼인 상태 대 연령의 누적 밀도 그림은 그다지 유익하지 않습니다(그림 \@ref(fig:marital-vs-age)).

(ref:marital-vs-age) 일반 사회 조사(GSS)에서 보고된 연령별 혼인 상태. 그림을 단순화하기 위해 별거로 보고된 소수의 사례를 제거했습니다. 미혼이거나 사별한 사람들의 빈도가 연령에 따라 너무 급격하게 변하여 기혼 및 이혼한 사람들의 연령 분포가 심하게 왜곡되고 해석하기 어렵기 때문에 이 그림을 "나쁨"으로 표시했습니다.

<div class="figure" style="text-align: center">
<img src="visualizing_proportions_files/figure-html/marital-vs-age-1.png" alt="(ref:marital-vs-age)" width="576" />
<p class="caption">(\#fig:marital-vs-age)(ref:marital-vs-age)</p>
</div>

부분 밀도로 시각화된 동일한 데이터 세트가 훨씬 더 명확합니다(그림 \@ref(fig:marital-vs-age-facets)). 특히 기혼자 비율은 30대 후반에 정점을 찍고 이혼자 비율은 40대 초반에 정점을 찍으며 사별자 비율은 70대 중반에 정점을 찍는 것을 볼 수 있습니다.

(ref:marital-vs-age-facets) 설문 조사 대상 총 인원 수의 비율로 표시된 연령별 혼인 상태. 색칠된 영역은 해당 혼인 상태를 가진 사람들의 연령 밀도 추정치를 나타내고 회색 영역은 전체 연령 분포를 나타냅니다.

<div class="figure" style="text-align: center">
<img src="visualizing_proportions_files/figure-html/marital-vs-age-facets-1.png" alt="(ref:marital-vs-age-facets)" width="754.285714285714" />
<p class="caption">(\#fig:marital-vs-age-facets)(ref:marital-vs-age-facets)</p>
</div>

그러나 그림 \@ref(fig:marital-vs-age-facets)의 한 가지 단점은 이 표현이 특정 시점에서 상대적 비율을 쉽게 파악하기 어렵다는 것입니다. 예를 들어 설문 조사 대상 전체의 50% 이상이 결혼한 연령이 언제인지 알고 싶다면 그림 \@ref(fig:marital-vs-age-facets)에서 쉽게 알 수 없습니다. 이 질문에 답하기 위해 동일한 유형의 표시를 사용하되 *y* 축을 따라 절대 수 대신 상대적 비율을 표시할 수 있습니다(그림 \@ref(fig:marital-vs-age-proportions)). 이제 기혼자가 20대 후반부터 과반수를 차지하고 사별자가 70대 중반부터 과반수를 차지한다는 것을 알 수 있습니다.

(ref:marital-vs-age-proportions) 설문 조사 대상 총 인원 수의 비율로 표시된 연령별 혼인 상태. 파란색으로 색칠된 영역은 해당 상태를 가진 해당 연령의 사람들의 비율을 나타내고 회색으로 색칠된 영역은 다른 모든 혼인 상태를 가진 사람들의 비율을 나타냅니다.

<div class="figure" style="text-align: center">
<img src="visualizing_proportions_files/figure-html/marital-vs-age-proportions-1.png" alt="(ref:marital-vs-age-proportions)" width="754.285714285714" />
<p class="caption">(\#fig:marital-vs-age-proportions)(ref:marital-vs-age-proportions)</p>
</div>
