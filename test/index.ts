function sum(n1: number, n2: number): number {
	return n1 + n2;
}

sum(1, 2);
const i: boolean = sum(1, '2');

// Try creating a simple object
const foo = {
	bar: 'John Doe',
};

class Person {
	constructor(public name: string, private _age: number) {}

	public set age(age: number) {
		if (age > 0) this._age = age;
	}

	public get age() {
		return this._age;
	}
}

const person1 = new Person();
const person2 = new Person('John Doe', 10);
