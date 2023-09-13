class Quiz{
  const Quiz(this.question, this.answer);
  final String question;
  final bool answer;  
}

//const q1 = Quiz('Кыргызстанда 7 область барбы?', true);
const q9 = Quiz('Кун системасында 10 планета барбы?', false);
//const q2 = Quiz('Кыргызстандын борбору Бишкеби?', true);
const q10 = Quiz('Турциянын борбору Стамбулбу?', false);
//const q3 = Quiz('Эң кичине материк бул - Түндүк Америкабы?', false);
const q11 = Quiz('Эң чон материк бул - Европабы?', false);
//const q4 = Quiz('Ошко 3000 жыл болгонбу?', true);
const q12 = Quiz('Ошко 3000 жыл болгонбу?', true);
//const q5 = Quiz('Крокодил Нарын дарыясында барбы?', false);
const q13 = Quiz('Крокодил Нарын дарыясында барбы?', false);
//const q6 = Quiz('Жер планетасы эң чоңбу?', false);
const q14 = Quiz('Жер планетасы эң чоңбу?', false);
const q7 = Quiz('Flutter мобильдик тиркеме жасай алабы?', true);
const q15 = Quiz('Toyota мобильдик тиркеме жасай алабы?', false);
const q8 = Quiz('Бал бузулабы?', false);
const q16 = Quiz('Суу уч турлуу абалда боло алабы?', true);

const quizzes = <Quiz>[q7, q8, q9, q10, q11, q12, q13, q14, q15, q16];