package Abstraction6;

import java.util.List;

public abstract class Phone  {
	protected List<Contact> arrayContact;

	public abstract void insertContact(String name, String number);

	public abstract void removeContact(String name);

	public abstract void updateContact(String name, String newNumber);

	public abstract void searchContact(String name);
}
