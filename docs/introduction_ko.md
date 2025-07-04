# 소개 {#introduction}

데이터 시각화는 예술과 과학의 결합입니다. 문제는 과학을 그르치지 않으면서 예술을 제대로 하는 것, 그리고 그 반대입니다. 데이터 시각화는 무엇보다도 데이터를 정확하게 전달해야 합니다. 오도하거나 왜곡해서는 안 됩니다. 한 숫자가 다른 숫자보다 두 배 크지만 시각화에서는 거의 같아 보인다면 그 시각화는 잘못된 것입니다. 동시에 데이터 시각화는 미적으로 만족스러워야 합니다. 좋은 시각적 표현은 시각화의 메시지를 강화하는 경향이 있습니다. 그림에 거슬리는 색상, 불균형한 시각적 요소 또는 기타 주의를 산만하게 하는 특징이 포함되어 있으면 보는 사람이 그림을 검사하고 올바르게 해석하기가 더 어려워집니다.

제 경험상 과학자들은 (항상 그런 것은 아니지만!) 데이터를 심각하게 오도하지 않고 시각화하는 방법을 자주 알고 있습니다. 그러나 시각적 미학에 대한 감각이 잘 발달되지 않았을 수 있으며 의도치 않게 원하는 메시지를 손상시키는 시각적 선택을 할 수 있습니다. 반면에 디자이너는 아름답게 보이지만 데이터를 가볍게 여기고 느슨하게 다루는 시각화를 준비할 수 있습니다. 제 목표는 두 그룹 모두에게 유용한 정보를 제공하는 것입니다.

이 책은 출판물, 보고서 또는 프레젠테이션을 위해 데이터를 시각화하는 데 필요한 주요 원칙, 방법 및 개념을 다루려고 합니다. 데이터 시각화는 광범위한 분야이며 가장 넓은 정의로는 개략적인 기술 도면, 3D 애니메이션, 사용자 인터페이스와 같이 다양한 주제를 포함할 수 있으므로 이 책의 범위를 반드시 제한해야 했습니다. 저는 특히 인쇄물, 온라인 또는 슬라이드로 제공되는 정적 시각화 사례를 다루고 있습니다. 이 책은 불확실성 시각화에 대한 장의 한 간략한 섹션을 제외하고는 대화형 시각 자료나 동영상을 다루지 않습니다. 따라서 이 책 전체에서 "시각화"와 "그림"이라는 단어를 다소 혼용하여 사용할 것입니다. 이 책은 또한 기존 시각화 소프트웨어나 프로그래밍 라이브러리를 사용하여 그림을 만드는 방법에 대한 지침을 제공하지 않습니다. 책 끝의 주석이 달린 참고 문헌에는 이러한 주제를 다루는 적절한 텍스트에 대한 포인터가 포함되어 있습니다.

이 책은 세 부분으로 나뉩니다. 첫 번째 부분인 "데이터에서 시각화까지"에서는 막대 그래프, 산점도 또는 원형 차트와 같은 다양한 유형의 플롯과 차트를 설명합니다. 주요 강조점은 시각화의 과학입니다. 이 부분에서는 생각할 수 있는 모든 시각화 접근 방식에 대한 백과사전식 설명을 제공하기보다는 출판물에서 접하거나 자신의 작업에 필요할 가능성이 있는 핵심 시각화 세트를 논의합니다. 이 부분을 구성할 때 시각화되는 데이터 유형별이 아니라 전달하는 메시지 유형별로 시각화를 그룹화하려고 했습니다. 통계 텍스트는 종종 데이터 유형별로 데이터 분석 및 시각화를 설명하며 자료를 변수의 수와 유형(연속 변수 하나, 이산 변수 하나, 연속 변수 두 개, 연속 변수 하나와 이산 변수 하나 등)별로 구성합니다. 저는 통계학자만이 이 구성이 유용하다고 생각한다고 생각합니다. 대부분의 다른 사람들은 어떤 것이 얼마나 큰지, 부분으로 어떻게 구성되는지, 다른 것과 어떻게 관련되는지 등과 같은 메시지 측면에서 생각합니다.

두 번째 부분인 "그림 디자인의 원칙"에서는 데이터 시각화를 구성할 때 발생하는 다양한 디자인 문제를 논의합니다. 주요하지만 배타적이지 않은 강조점은 데이터 시각화의 미적 측면입니다. 데이터 세트에 적합한 플롯 또는 차트 유형을 선택한 후에는 색상, 기호 및 글꼴 크기와 같은 시각적 요소에 대한 미적 선택을 해야 합니다. 이러한 선택은 시각화가 얼마나 명확한지와 얼마나 우아하게 보이는지에 모두 영향을 미칠 수 있습니다. 이 두 번째 부분의 장에서는 실제 응용 프로그램에서 반복적으로 발생하는 가장 일반적인 문제를 다룹니다.

세 번째 부분인 "기타 주제"에서는 처음 두 부분에 맞지 않는 몇 가지 남은 문제를 다룹니다. 이미지와 플롯을 저장하는 데 일반적으로 사용되는 파일 형식을 논의하고 시각화 소프트웨어 선택에 대한 생각을 제공하며 개별 그림을 더 큰 문서의 맥락에 배치하는 방법을 설명합니다.

## 보기 흉하고, 나쁘고, 잘못된 그림 {-}

이 책 전체에서 저는 종종 동일한 그림의 다른 버전을 보여주는데, 일부는 좋은 시각화를 만드는 방법의 예이고 일부는 그렇지 않은 방법의 예입니다. 어떤 예를 모방해야 하고 어떤 예를 피해야 하는지에 대한 간단한 시각적 지침을 제공하기 위해 문제 있는 그림에 "보기 흉함", "나쁨" 또는 "잘못됨"으로 명확하게 레이블을 지정합니다(그림 \@ref(fig:ugly-bad-wrong-examples)).

- **보기 흉함**---미적 문제가 있지만 그 외에는 명확하고 유익한 그림입니다.
- **나쁨**---인식과 관련된 문제가 있는 그림입니다. 불분명하거나 혼란스럽거나 지나치게 복잡하거나 기만적일 수 있습니다.
- **잘못됨**---수학과 관련된 문제가 있는 그림입니다. 객관적으로 부정확합니다.


(ref:ugly-bad-wrong-examples) 보기 흉하고, 나쁘고, 잘못된 그림의 예. (a) 세 가지 값(A = 3, B = 5, C = 4)을 보여주는 막대 그래프. 이것은 큰 결함이 없는 합리적인 시각화입니다. (b) (a) 부분의 보기 흉한 버전. 플롯은 기술적으로 정확하지만 미적으로 만족스럽지 않습니다. 색상이 너무 밝고 유용하지 않습니다. 배경 격자가 너무 두드러집니다. 텍스트는 세 가지 다른 글꼴과 세 가지 다른 크기로 표시됩니다. (c) (a) 부분의 나쁜 버전. 각 막대는 자체 *y* 축 눈금으로 표시됩니다. 눈금이 정렬되지 않아 그림이 오해의 소지가 있습니다. 세 값이 실제보다 더 가깝다는 인상을 쉽게 받을 수 있습니다. (d) (a) 부분의 잘못된 버전. 명시적인 *y* 축 눈금이 없으면 막대가 나타내는 숫자를 확인할 수 없습니다. 표시된 값은 3, 5, 4여야 하지만 막대는 길이 1, 3, 2로 보입니다.


<div class="figure" style="text-align: center">
<img src="introduction_files/figure-html/ugly-bad-wrong-examples-1.png" alt="(ref:ugly-bad-wrong-examples)" width="576" />
<p class="caption">(\#fig:ugly-bad-wrong-examples)(ref:ugly-bad-wrong-examples)</p>
</div>

저는 좋은 그림에 명시적으로 레이블을 지정하지 않습니다. 결함이 있다고 명확하게 레이블이 지정되지 않은 그림은 적어도 수용 가능한 것으로 간주해야 합니다. 유익하고 보기 좋으며 그대로 인쇄할 수 있는 그림입니다. 좋은 그림 중에도 품질 차이가 있을 것이며 일부 좋은 그림은 다른 그림보다 더 나을 것입니다.

저는 일반적으로 특정 등급에 대한 근거를 제공하지만 일부는 취향의 문제입니다. 일반적으로 "보기 흉함" 등급은 "나쁨" 또는 "잘못됨" 등급보다 더 주관적입니다. 또한 "보기 흉함"과 "나쁨" 사이의 경계는 다소 유동적입니다. 때로는 잘못된 디자인 선택이 인간의 인식에 방해가 되어 "보기 흉함" 등급보다 "나쁨" 등급이 더 적절할 수 있습니다. 어쨌든 저는 여러분이 자신만의 안목을 키우고 제 선택을 비판적으로 평가하도록 권장합니다.
