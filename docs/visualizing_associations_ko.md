# 둘 이상의 정량적 변수 간의 연관성 시각화 {#visualizing-associations}

많은 데이터 세트에는 둘 이상의 정량적 변수가 포함되어 있으며 이러한 변수가 서로 어떻게 관련되는지에 관심이 있을 수 있습니다. 예를 들어 동물의 키, 몸무게, 길이, 일일 에너지 요구량과 같은 다양한 동물의 정량적 측정 데이터 세트가 있을 수 있습니다. 이러한 변수 중 두 개(예: 키와 몸무게)의 관계를 플로팅하려면 일반적으로 산점도를 사용합니다. 한 번에 두 개 이상의 변수를 표시하려면 버블 차트, 산점도 행렬 또는 상관도를 선택할 수 있습니다. 마지막으로 매우 고차원적인 데이터 세트의 경우 주성분 분석과 같은 형태로 차원 축소를 수행하는 것이 유용할 수 있습니다.

## 산점도 {#associations-scatterplots}

123마리 파랑어치에 대해 수행된 측정 데이터 세트를 사용하여 기본 산점도와 여러 변형을 보여 드리겠습니다. 이 데이터 세트에는 각 새의 머리 길이(부리 끝에서 머리 뒤까지 측정), 두개골 크기(머리 길이에서 부리 길이 제외), 체질량과 같은 정보가 포함되어 있습니다. 이러한 변수 간에는 관계가 있을 것으로 예상됩니다. 예를 들어 부리가 긴 새는 두개골 크기가 더 클 것으로 예상되며 체질량이 높은 새는 체질량이 낮은 새보다 부리와 두개골이 더 클 것입니다.

이러한 관계를 탐색하기 위해 먼저 머리 길이 대 체질량 플롯으로 시작합니다(그림 \@ref(fig:blue-jays-scatter)). 이 플롯에서 머리 길이는 *y* 축을 따라 표시되고 체질량은 *x* 축을 따라 표시되며 각 새는 하나의 점으로 표시됩니다. (용어 참고: *y* 축을 따라 표시된 변수를 *x* 축을 따라 표시된 변수와 비교하여 플로팅한다고 말합니다.) 점은 분산된 구름을 형성하지만(따라서 *산점도*라는 용어) 의심할 여지 없이 체질량이 높은 새일수록 머리가 긴 경향이 있습니다. 머리가 가장 긴 새는 관찰된 최대 체질량에 가깝고 머리가 가장 짧은 새는 관찰된 최소 체질량에 가깝습니다.

(ref:blue-jays-scatter) 123마리 파랑어치의 머리 길이(부리 끝에서 머리 뒤까지 측정, mm) 대 체질량(그램). 각 점은 하나의 새에 해당합니다. 무거운 새일수록 머리가 긴 경향이 어느 정도 있습니다. 데이터 출처: 키스 타빈, 오벌린 대학

<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/blue-jays-scatter-1.png" alt="(ref:blue-jays-scatter)" width="480" />
<p class="caption">(\#fig:blue-jays-scatter)(ref:blue-jays-scatter)</p>
</div>

파랑어치 데이터 세트에는 수컷과 암컷 새가 모두 포함되어 있으며 머리 길이와 체질량 간의 전반적인 관계가 각 성별에 대해 개별적으로 유지되는지 알고 싶을 수 있습니다. 이 질문에 답하기 위해 산점도의 점을 새의 성별별로 색칠할 수 있습니다(그림 \@ref(fig:blue-jays-scatter-sex)). 이 그림은 머리 길이와 체질량의 전반적인 추세가 적어도 부분적으로는 새의 성별에 의해 주도된다는 것을 보여줍니다. 동일한 체질량에서 암컷은 수컷보다 머리가 짧은 경향이 있습니다. 동시에 암컷은 평균적으로 수컷보다 가벼운 경향이 있습니다.

(ref:blue-jays-scatter-sex) 123마리 파랑어치의 머리 길이 대 체질량. 새의 성별은 색상으로 표시됩니다. 동일한 체질량에서 수컷 새는 암컷 새보다 머리가 더 긴 경향이 있습니다(특히 부리가 더 김). 데이터 출처: 키스 타빈, 오벌린 대학

<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/blue-jays-scatter-sex-1.png" alt="(ref:blue-jays-scatter-sex)" width="480" />
<p class="caption">(\#fig:blue-jays-scatter-sex)(ref:blue-jays-scatter-sex)</p>
</div>

머리 길이는 부리 끝에서 머리 뒤까지의 거리로 정의되므로 머리 길이가 길다는 것은 부리가 길거나 두개골이 크거나 둘 다를 의미할 수 있습니다. 데이터 세트의 또 다른 변수인 두개골 크기(머리 길이와 유사하지만 부리 제외)를 살펴봄으로써 부리 길이와 두개골 크기를 분리할 수 있습니다. 이미 체질량에 *x* 위치, 머리 길이에 *y* 위치, 새 성별에 점 색상을 사용하고 있으므로 두개골 크기를 매핑할 다른 미학적 요소가 필요합니다. 한 가지 옵션은 점의 크기를 사용하는 것으로, *버블 차트*라는 시각화가 됩니다(그림 \@ref(fig:blue-jays-scatter-bubbles)).


(ref:blue-jays-scatter-bubbles) 123마리 파랑어치의 머리 길이 대 체질량. 새의 성별은 색상으로, 새의 두개골 크기는 기호 크기로 표시됩니다. 머리 길이 측정에는 부리 길이가 포함되지만 두개골 크기 측정에는 포함되지 않습니다. 머리 길이와 두개골 크기는 상관 관계가 있는 경향이 있지만 두개골 크기에 비해 부리가 유난히 길거나 짧은 새도 있습니다. 데이터 출처: 키스 타빈, 오벌린 대학


<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/blue-jays-scatter-bubbles-1.png" alt="(ref:blue-jays-scatter-bubbles)" width="754.285714285714" />
<p class="caption">(\#fig:blue-jays-scatter-bubbles)(ref:blue-jays-scatter-bubbles)</p>
</div>

버블 차트는 동일한 유형의 변수인 정량적 변수를 위치와 크기라는 두 가지 다른 유형의 척도로 표시한다는 단점이 있습니다. 이로 인해 여러 변수 간의 연관 강도를 시각적으로 파악하기 어렵습니다. 또한 버블 크기로 인코딩된 데이터 값 간의 차이는 위치로 인코딩된 데이터 값 간의 차이보다 인식하기 어렵습니다. 가장 큰 버블조차도 전체 그림 크기에 비해 다소 작아야 하므로 가장 큰 버블과 가장 작은 버블 간의 크기 차이는 필연적으로 작습니다. 결과적으로 데이터 값의 작은 차이는 거의 볼 수 없는 매우 작은 크기 차이에 해당합니다. 그림
\@ref(fig:blue-jays-scatter-bubbles)에서는 가장 작은 두개골(약 28mm)과 가장 큰 두개골(약 34mm) 간의 차이를 시각적으로 증폭시키는 크기 매핑을 사용했지만 두개골 크기와 체질량 또는 머리 길이 간의 관계를 파악하기는 어렵습니다.

버블 차트의 대안으로 각 개별 플롯이 두 개의 데이터 차원을 보여주는 전체 대 전체 산점도 행렬을 표시하는 것이 더 바람직할 수 있습니다(그림 \@ref(fig:blue-jays-scatter-all)). 이 그림은 두개골 크기와 체질량 간의 관계가 암컷 새가 다소 작은 경향이 있다는 점을 제외하고는 암컷과 수컷 새에 대해 비슷하다는 것을 명확하게 보여줍니다. 그러나 머리 길이와 체질량 간의 관계에 대해서는 그렇지 않습니다. 성별에 따라 명확한 구분이 있습니다. 다른 모든 조건이 동일하다면 수컷 새는 암컷 새보다 부리가 더 긴 경향이 있습니다.


(ref:blue-jays-scatter-all) 123마리 파랑어치의 머리 길이, 체질량, 두개골 크기의 전체 대 전체 산점도 행렬. 이 그림은 그림 \@ref(fig:blue-jays-scatter-sex)와 정확히 동일한 데이터를 보여줍니다. 그러나 기호 크기보다 위치를 더 잘 판단하므로 두개골 크기와 다른 두 변수 간의 상관 관계는 그림 \@ref(fig:blue-jays-scatter-sex)보다 쌍별 산점도에서 더 쉽게 인식할 수 있습니다. 데이터 출처: 키스 타빈, 오벌린 대학


<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/blue-jays-scatter-all-1.png" alt="(ref:blue-jays-scatter-all)" width="685.714285714286" />
<p class="caption">(\#fig:blue-jays-scatter-all)(ref:blue-jays-scatter-all)</p>
</div>


## 상관도 {#associations-correlograms}

정량적 변수가 3~4개 이상인 경우 전체 대 전체 산점도 행렬은 빠르게 다루기 어려워집니다. 이 경우 원시 데이터보다는 변수 쌍 간의 연관 정도를 정량화하고 이 양을 시각화하는 것이 더 유용합니다. 이를 수행하는 일반적인 방법 중 하나는 *상관 계수*를 계산하는 것입니다. 상관 계수 *r*은 두 변수가 얼마나 공변하는지를 측정하는 -1과 1 사이의 숫자입니다. *r* = 0 값은 전혀 연관이 없음을 의미하고 1 또는 -1 값은 완벽한 연관을 나타냅니다. 상관 계수의 부호는 변수가 *상관 관계*인지(한 변수의 큰 값이 다른 변수의 큰 값과 일치함) 또는 *반비례 관계*인지(한 변수의 큰 값이 다른 변수의 작은 값과 일치함)를 나타냅니다. 여러 상관 강도가 어떻게 보이는지에 대한 시각적 예를 제공하기 위해 그림 \@ref(fig:correlations)에서는 *x* 값과 *y* 값이 상관 관계를 이루는 정도가 크게 다른 무작위로 생성된 점 집합을 보여줍니다.

(ref:correlations) 여러 크기와 방향의 상관 관계 예, 관련 상관 계수 *r* 포함. 두 행 모두 왼쪽에서 오른쪽으로 상관 관계가 약한 것에서 강한 것으로 이동합니다. 위쪽 행에서는 상관 관계가 양수이고(한 양의 큰 값이 다른 양의 큰 값과 연관됨) 아래쪽 행에서는 음수입니다(한 양의 큰 값이 다른 양의 작은 값과 연관됨). 여섯 개 패널 모두에서 *x* 및 *y* 값 집합은 동일하지만 지정된 상관 계수를 생성하기 위해 개별 *x* 및 *y* 값 간의 쌍이 재정렬되었습니다.

<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/correlations-1.png" alt="(ref:correlations)" width="685.714285714286" />
<p class="caption">(\#fig:correlations)(ref:correlations)</p>
</div>

상관 계수는 다음과 같이 정의됩니다.

$$
r = \frac{\sum_i (x_i - \bar x)(y_i - \bar y)}{\sqrt{\sum_i (x_i-\bar x)^2}\sqrt{\sum_i (y_i-\bar y)^2}},
$$
여기서 $x_i$와 $y_i$는 두 개의 관찰 집합이고 $\bar x$와 $\bar y$는 해당 표본 평균입니다. 이 공식에서 몇 가지 관찰을 할 수 있습니다. 첫째, 공식은 $x_i$와 $y_i$에 대해 대칭적이므로 *x*와 *y*의 상관 관계는 *y*와 *x*의 상관 관계와 동일합니다. 둘째, 개별 값 $x_i$와 $y_i$는 해당 표본 평균과의 차이 맥락에서만 공식에 들어가므로 전체 데이터 세트를 상수만큼 이동하면(예: 일부 상수 $C$에 대해 $x_i$를 $x_i' = x_i + C$로 대체) 상관 계수는 변경되지 않습니다. 셋째, 데이터를 다시 스케일링하면($x_i' = C x_i$) 상수 $C$가 공식의 분자와 분모 모두에 나타나므로 상쇄되므로 상관 계수도 변경되지 않습니다.

상관 계수의 시각화를 *상관도*라고 합니다. 상관도의 사용을 설명하기 위해 법의학 작업 중에 얻은 200개 이상의 유리 조각 데이터 세트를 고려해 보겠습니다. 각 유리 조각에 대해 여러 광물 산화물의 무게 백분율로 표현된 조성 측정이 있습니다. 측정이 있는 7가지 다른 산화물이 있으므로 총 6 + 5 + 4 + 3 + 2 + 1 = 21개의 쌍별 상관 관계가 있습니다. 이러한 21개의 상관 관계를 각 타일이 하나의 상관 계수를 나타내는 색칠된 타일 행렬로 한 번에 표시할 수 있습니다(그림 \@ref(fig:forensic-correlations1)). 이 상관도를 통해 마그네슘이 거의 모든 다른 산화물과 음의 상관 관계를 갖고 알루미늄과 바륨이 강한 양의 상관 관계를 갖는 것과 같은 데이터의 추세를 빠르게 파악할 수 있습니다.

(ref:forensic-correlations1) 법의학 작업 중에 얻은 214개 유리 조각 샘플의 광물 함량 상관 관계. 데이터 세트에는 각 유리 조각에서 발견된 마그네슘(Mg), 칼슘(Ca), 철(Fe), 칼륨(K), 나트륨(Na), 알루미늄(Al), 바륨(Ba)의 양을 측정하는 7개의 변수가 포함되어 있습니다. 색칠된 타일은 이러한 변수 쌍 간의 상관 관계를 나타냅니다. 데이터 출처: B. German

<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/forensic-correlations1-1.png" alt="(ref:forensic-correlations1)" width="384" />
<p class="caption">(\#fig:forensic-correlations1)(ref:forensic-correlations1)</p>
</div>

그림 \@ref(fig:forensic-correlations1)의 상관도의 한 가지 약점은 낮은 상관 관계, 즉 절대값이 0에 가까운 상관 관계가 시각적으로 충분히 억제되지 않는다는 것입니다. 예를 들어 마그네슘(Mg)과 칼륨(K)은 전혀 상관 관계가 없지만 그림 \@ref(fig:forensic-correlations1)은 이를 즉시 보여주지 않습니다. 이 한계를 극복하기 위해 상관 관계를 색칠된 원으로 표시하고 원 크기를 상관 계수의 절대값으로 조정할 수 있습니다(그림 \@ref(fig:forensic-correlations1)). 이렇게 하면 낮은 상관 관계는 억제되고 높은 상관 관계는 더 잘 두드러집니다.

(ref:forensic-correlations2) 법의학 유리 샘플의 광물 함량 상관 관계. 색상 척도는 그림 \@ref(fig:forensic-correlations1)과 동일합니다. 그러나 이제 각 상관 관계의 크기도 색칠된 원의 크기로 인코딩됩니다. 이 선택은 0에 가까운 상관 관계가 있는 경우를 시각적으로 덜 강조합니다. 데이터 출처: B. German

<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/forensic-correlations2-1.png" alt="(ref:forensic-correlations2)" width="384" />
<p class="caption">(\#fig:forensic-correlations2)(ref:forensic-correlations2)</p>
</div>

모든 상관도에는 한 가지 중요한 단점이 있습니다. 상당히 추상적이라는 것입니다. 데이터의 중요한 패턴을 보여주지만 기본 데이터 포인트를 숨기고 잘못된 결론을 내리게 할 수 있습니다. 데이터에서 계산된 추상적이고 파생된 양보다는 원시 데이터를 시각화하는 것이 항상 더 좋습니다. 다행히 차원 축소 기법을 적용하여 중요한 패턴을 보여주는 것과 원시 데이터를 보여주는 것 사이의 중간 지점을 자주 찾을 수 있습니다.

## 차원 축소

차원 축소는 대부분의 고차원 데이터 세트가 중복된 정보를 전달하는 여러 상관 변수로 구성된다는 핵심 통찰력에 의존합니다. 이러한 데이터 세트는 많은 중요한 정보를 잃지 않고 더 적은 수의 주요 차원으로 축소될 수 있습니다. 간단하고 직관적인 예로 각 사람의 키와 몸무게, 팔과 다리 길이, 허리, 엉덩이, 가슴 둘레 등과 같은 양을 포함하는 여러 신체적 특징 데이터 세트를 생각해 보십시오. 이러한 모든 양이 무엇보다도 각 사람의 전체 크기와 관련된다는 것을 즉시 이해할 수 있습니다. 다른 모든 조건이 동일하다면 더 큰 사람은 키가 더 크고 몸무게가 더 나가며 팔과 다리가 더 길고 허리, 엉덩이, 가슴 둘레가 더 클 것입니다. 다음으로 중요한 차원은 사람의 성별입니다. 남성과 여성의 측정값은 비슷한 크기의 사람에 대해 상당히 다릅니다. 예를 들어 다른 모든 조건이 동일하다면 여성은 남성보다 엉덩이 둘레가 더 큰 경향이 있습니다.

차원 축소에는 여러 가지 기법이 있습니다. 여기서는 가장 널리 사용되는 기법인 *주성분 분석*(PCA)만 설명합니다. PCA는 데이터의 원래 변수를 0 평균과 단위 분산으로 표준화한 후 선형 조합하여 새로운 변수 집합(주성분, PC라고 함)을 도입합니다(2차원 장난감 예는 그림 \@ref(fig:blue-jays-PCA) 참조). PC는 상관 관계가 없도록 선택되며 첫 번째 성분이 데이터의 가장 큰 변동을 포착하고 후속 성분이 점점 더 적은 변동을 포착하도록 정렬됩니다. 일반적으로 데이터의 주요 특징은 처음 두세 개의 PC만으로도 볼 수 있습니다.

(ref:blue-jays-PCA) 2차원 주성분(PC) 분석 예. (a) 원본 데이터. 예제 데이터로 파랑어치 데이터 세트의 머리 길이 및 두개골 크기 측정을 사용합니다. 암컷과 수컷 새는 색상으로 구별되지만 이 구별은 PC 분석에 영향을 미치지 않습니다. (b) PCA의 첫 번째 단계로 원본 데이터 값을 0 평균과 단위 분산으로 조정합니다. 그런 다음 데이터의 최대 변동 방향을 따라 새로운 변수(주성분, PC)를 정의합니다. (c) 마지막으로 데이터를 새로운 좌표로 투영합니다. 수학적으로 이 투영은 원점을 중심으로 데이터 포인트를 회전하는 것과 같습니다. 여기에 표시된 2D 예에서 데이터 포인트는 시계 방향으로 45도 회전합니다.

<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/blue-jays-PCA-1.png" alt="(ref:blue-jays-PCA)" width="754.285714285714" />
<p class="caption">(\#fig:blue-jays-PCA)(ref:blue-jays-PCA)</p>
</div>

PCA를 수행할 때 일반적으로 두 가지 정보에 관심이 있습니다. (i) PC의 구성 및 (ii) 주성분 공간에서 개별 데이터 포인트의 위치입니다. 법의학 유리 데이터 세트의 PC 분석에서 이러한 두 가지 정보를 살펴보겠습니다.

먼저 성분 구성을 살펴봅니다(그림 \@ref(fig:forensic-PCA-rotation)). 여기서 처음 두 성분인 PC 1과 PC 2만 고려합니다. PC는 원래 변수(표준화 후)의 선형 조합이므로 원래 변수를 PC에 얼마나 기여하는지를 나타내는 화살표로 나타낼 수 있습니다. 여기서 바륨과 나트륨은 주로 PC 1에 기여하고 PC 2에는 기여하지 않으며 칼슘과 칼륨은 주로 PC 2에 기여하고 PC 1에는 기여하지 않으며 다른 변수는 두 성분에 다양한 양으로 기여함을 알 수 있습니다(그림 \@ref(fig:forensic-PCA-rotation)). 두 개 이상의 PC가 있기 때문에 화살표의 길이가 다양합니다. 예를 들어 철에 대한 화살표는 주로 고차 PC(표시되지 않음)에 기여하기 때문에 특히 짧습니다.

(ref:forensic-PCA-rotation) 법의학 유리 데이터 세트의 주성분 분석(PCA)에서 처음 두 성분의 구성. 성분 1(PC 1)은 주로 유리 조각의 알루미늄, 바륨, 나트륨, 마그네슘 함량을 측정하는 반면 성분 2(PC 2)는 주로 칼슘과 칼륨 함량, 그리고 어느 정도 알루미늄과 마그네슘 함량을 측정합니다.

<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/forensic-PCA-rotation-1.png" alt="(ref:forensic-PCA-rotation)" width="432" />
<p class="caption">(\#fig:forensic-PCA-rotation)(ref:forensic-PCA-rotation)</p>
</div>

다음으로 원래 데이터를 주성분 공간에 투영합니다(그림 \@ref(fig:forensic-PCA)). 이 플롯에서 여러 유형의 유리 조각이 명확하게 군집을 이루는 것을 볼 수 있습니다. 전조등과 창문 조각은 모두 PC 플롯에서 명확하게 구분된 영역에 속하며 이상치는 거의 없습니다. 식기류와 용기 조각은 약간 더 흩어져 있지만 그럼에도 불구하고 전조등 및 창문 조각과 명확하게 구별됩니다. 그림 \@ref(fig:forensic-PCA)를 그림 \@ref(fig:forensic-PCA-rotation)과 비교하면 창문 샘플은 평균 마그네슘 함량이 높고 평균 바륨, 알루미늄, 나트륨 함량이 낮은 경향이 있는 반면 전조등 샘플은 그 반대임을 결론 내릴 수 있습니다.

(ref:forensic-PCA) 그림 \@ref(fig:forensic-PCA-rotation)에 정의된 주성분 공간에서 시각화된 개별 유리 조각의 구성. 여러 유형의 유리 샘플이 PC 1과 2의 특징적인 값에서 군집을 이루는 것을 볼 수 있습니다. 특히 전조등은 음의 PC 1 값으로 특징지어지는 반면 창문은 양의 PC 1 값을 갖는 경향이 있습니다. 식기류와 용기는 PC 1 값이 0에 가깝고 양의 PC 2 값을 갖는 경향이 있습니다. 그러나 용기 조각이 음의 PC 1 값과 음의 PC 2 값을 모두 갖는 몇 가지 예외가 있습니다. 이러한 조각은 분석된 다른 모든 조각과 구성이 크게 다릅니다.


<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/forensic-PCA-1.png" alt="(ref:forensic-PCA)" width="685.714285714286" />
<p class="caption">(\#fig:forensic-PCA)(ref:forensic-PCA)</p>
</div>

## 쌍을 이룬 데이터 {#associations-paired-data}

다변량 정량적 데이터의 특별한 경우는 쌍을 이룬 데이터입니다. 즉, 약간 다른 조건에서 동일한 양에 대한 두 개 이상의 측정이 있는 데이터입니다. 예를 들어 각 대상에 대한 두 가지 비교 가능한 측정(예: 사람의 오른쪽 팔과 왼쪽 팔 길이), 다른 시점에서 동일한 대상에 대한 반복 측정(예: 연중 다른 두 시점의 사람 체중) 또는 밀접하게 관련된 두 대상에 대한 측정(예: 일란성 쌍둥이의 키)이 있습니다. 쌍을 이룬 데이터의 경우 각 쌍에 속하는 두 측정값이 다른 쌍에 속하는 측정값보다 서로 더 유사하다고 가정하는 것이 합리적입니다. 두 쌍둥이는 키가 거의 같지만 다른 쌍둥이와는 키가 다릅니다. 따라서 쌍을 이룬 데이터의 경우 쌍을 이룬 측정값 간의 차이를 강조하는 시각화를 선택해야 합니다.

이 경우 훌륭한 선택은 *x* = *y*를 표시하는 대각선 위에 간단한 산점도를 그리는 것입니다. 이러한 플롯에서 각 쌍의 두 측정값 간의 유일한 차이가 무작위 노이즈인 경우 표본의 모든 점은 이 선 주위에 대칭적으로 흩어집니다. 반대로 쌍을 이룬 측정값 간의 체계적인 차이는 대각선에 비해 데이터 포인트가 위 또는 아래로 체계적으로 이동하는 것으로 나타납니다. 예를 들어 1970년과 2010년에 166개국에 대해 측정된 1인당 이산화탄소(CO<sub>2</sub>) 배출량을 생각해 보십시오(그림 \@ref(fig:CO2-paired-scatter)). 이 예는 쌍을 이룬 데이터의 두 가지 일반적인 특징을 강조합니다. 첫째, 대부분의 점은 대각선에 비교적 가깝습니다. 국가 간 CO<sub>2</sub> 배출량은 거의 4자릿수 차이가 나지만 40년 동안 각 국가 내에서는 상당히 일관적입니다. 둘째, 점은 대각선에 비해 체계적으로 위쪽으로 이동합니다. 대부분의 국가에서 2010년 배출량이 1970년보다 높았습니다.

(ref:CO2-paired-scatter) 1970년과 2010년 166개국의 1인당 이산화탄소(CO<sub>2</sub>) 배출량. 각 점은 하나의 국가를 나타냅니다. 대각선은 1970년과 2010년의 동일한 CO<sub>2</sub> 배출량을 나타냅니다. 점은 대각선에 비해 체계적으로 위쪽으로 이동합니다. 대부분의 국가에서 2010년 배출량이 1970년보다 높았습니다. 데이터 출처: 이산화탄소 정보 분석 센터

<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/CO2-paired-scatter-1.png" alt="(ref:CO2-paired-scatter)" width="480" />
<p class="caption">(\#fig:CO2-paired-scatter)(ref:CO2-paired-scatter)</p>
</div>

그림 \@ref(fig:CO2-paired-scatter)과 같은 산점도는 데이터 포인트가 많거나 전체 데이터 세트가 귀무 가설에서 체계적으로 벗어나는 데 관심이 있을 때 잘 작동합니다. 반대로 관찰값이 적고 각 개별 사례의 정체성에 주로 관심이 있는 경우 *경사 그래프*가 더 나은 선택일 수 있습니다. 경사 그래프에서는 개별 측정을 두 열로 배열된 점으로 그리고 쌍을 이룬 점을 선으로 연결하여 쌍을 나타냅니다. 각 선의 기울기는 변화의 크기와 방향을 강조합니다. 그림 \@ref(fig:CO2-slopegraph)은 이 접근 방식을 사용하여 2000년부터 2010년까지 1인당 CO<sub>2</sub> 배출량 차이가 가장 큰 10개국을 보여줍니다.

(ref:CO2-slopegraph) 2000년과 2010년 1인당 이산화탄소(CO<sub>2</sub>) 배출량, 이 두 해 사이의 차이가 가장 큰 10개국. 데이터 출처: 이산화탄소 정보 분석 센터

<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/CO2-slopegraph-1.png" alt="(ref:CO2-slopegraph)" width="432" />
<p class="caption">(\#fig:CO2-slopegraph)(ref:CO2-slopegraph)</p>
</div>

경사 그래프는 산점도보다 한 가지 중요한 장점이 있습니다. 한 번에 두 개 이상의 측정을 비교하는 데 사용할 수 있다는 것입니다. 예를 들어 그림 \@ref(fig:CO2-slopegraph)를 수정하여 세 시점(여기서는 2000년, 2005년, 2010년)의 CO<sub>2</sub> 배출량을 표시할 수 있습니다(그림 \@ref(fig:CO2-slopegraph-three-year)). 이 선택은 전체 10년 동안 배출량 변화가 큰 국가와 카타르나 트리니다드 토바고와 같이 처음 5년 간격과 두 번째 5년 간격에 대해 보이는 추세에 큰 차이가 있는 국가를 모두 강조합니다.


(ref:CO2-slopegraph-three-year) 2000년, 2005년, 2010년 1인당 CO<sub>2</sub> 배출량, 2000년과 2010년 사이의 차이가 가장 큰 10개국. 데이터 출처: 이산화탄소 정보 분석 센터

<div class="figure" style="text-align: center">
<img src="visualizing_associations_files/figure-html/CO2-slopegraph-three-year-1.png" alt="(ref:CO2-slopegraph-three-year)" width="432" />
<p class="caption">(\#fig:CO2-slopegraph-three-year)(ref:CO2-slopegraph-three-year)</p>
</div>
